class EmpresasReceitaCuritibaController < ApplicationController
  before_action :authorize

  def filtrar_por_nome
    salvar_historico_busca
    @pagy, @empresas_receita_curitibas = pagy(EmpresasReceitaCuritiba.filtrar_por_nome(params[:nome].upcase))
    @empresas_receita_curitibas.each do |empresa|
      georreferenciar_empresa_api_bing(empresa)
    end
  end

  def filtrar_por_bairro
    salvar_historico_busca
    @pagy, @empresas_receita_curitibas = pagy(EmpresasReceitaCuritiba.filtrar_por_bairro(params[:bairro].upcase))
    @empresas_receita_curitibas.each do |empresa|
      georreferenciar_empresa_api_bing(empresa)
    end
  end

  def filtrar_por_rua
    salvar_historico_busca
    @pagy, @empresas_receita_curitibas = pagy(EmpresasReceitaCuritiba.filtrar_por_rua(params[:endereco].upcase))
    @empresas_receita_curitibas.each do |empresa|
      georreferenciar_empresa_api_bing(empresa)
    end
  end

  def get_by_cnpj
    salvar_historico_busca
    @empresa_receita_curitiba = EmpresasReceitaCuritiba.get_by_cnpj(params[:cnpj].gsub(/[^0-9]/,''))
    if @empresa_receita_curitiba == nil
      flash[:alert] = "Não encontramos nenhum resultado correspondente."
      redirect_to :form_cnpj
      return
    end
    georreferenciar_empresa_api_bing(@empresa_receita_curitiba)
    render "show"
  end

  def busca_avancada
    salvar_historico_busca
    @pagy, @empresas_receita_curitibas = pagy(EmpresasReceitaCuritiba.filtrar_busca_avancada(params[:nome].upcase, params[:bairro].upcase, params[:rua].upcase, params[:cep].upcase))
    @empresas_receita_curitibas.each do |empresa|
      georreferenciar_empresa_api_bing(empresa)
    end
  end

  def form_filtrar_por_nome
  end

  def form_filtrar_por_bairro
  end

  def form_filtrar_por_rua
  end

  def form_filtrar_por_cnpj
    respond_to do |format|
      format.html
      format.xml
    end
  end

  def form_busca_avancada
  end

  private

  def georreferenciar_empresa_api_google(empresa)
    results = Geocoder.search(empresa.endereco_completo_google)
    endereco_georreferenciado = results.first&.data
    if results.length > 1
      filtrar_endereco_por_cep = lambda { |result| result.data["address_components"].select { |hash| hash["types"].include? "postal_code" }.first.try(:[], "long_name")&.gsub(/[^0-9]/, '') == empresa.cep }
      endereco_georreferenciado = results.select(&filtrar_endereco_por_cep).first&.data
      if endereco_georreferenciado.nil?
        filtrar_endereco_por_numero = lambda { |result| result.data["address_components"].select { |hash| hash["types"].include? "street_number" }.first.try(:[], "long_name")&.gsub(/[^0-9]/, '') == empresa.numero }
        endereco_georreferenciado = results.select(&filtrar_endereco_por_numero).first&.data ? results.select(&filtrar_endereco_por_numero).first&.data : results.first.data
      end
    end
    unless results.blank?
      empresa.lat = endereco_georreferenciado["geometry"]["location"]["lat"]
      empresa.lng = endereco_georreferenciado["geometry"]["location"]["lng"]
    end
  end

  def georreferenciar_empresa_api_bing(empresa)
    results = Geocoder.search(empresa.endereco_completo_bing)
    endereco_georreferenciado = results.first&.data
    if results.length > 1
      filtrar_endereco_por_cep = lambda { |result| empresa.cep.include? result.data["address"]["postalCode"].to_s }
      endereco_georreferenciado = results.select(&filtrar_endereco_por_cep).first&.data
      if endereco_georreferenciado.nil?
        filtrar_endereco_por_numero = lambda { |result| result.data["name"].include? empresa.numero }
        endereco_georreferenciado = results.select(&filtrar_endereco_por_numero).first&.data ? results.select(&filtrar_endereco_por_numero).first&.data : results.first.data
      end
    end
    unless results.blank?
      lat, lng = endereco_georreferenciado["point"]["coordinates"]
      empresa.lat = lat
      empresa.lng = lng
    end
  end

  # Only allow a list of trusted parameters through.
    def empresas_receita_curitiba_params
      params.require(:empresa_receita_curitiba).permit(:cnpj, :nomeempresarial, :nomefantasia, :descricaotipologradouro, :logradouro, :numero, :complemento, :bairro, :cep, :endereco, :nome)
    end

  def salvar_historico_busca
    search_params = params.select {|k,v| ['cnpj', 'nome', 'endereco', 'descricaotipologradouro', 'logradouro', 'numero', 'complemento', 'bairro', 'cep', 'endereco', 'nome'].include?(k)}
    tipos_buscas = {
      'filtrar_por_nome' => 'Por nome',
      'filtrar_por_bairro' => 'Por bairro',
      'filtrar_por_rua' => 'Por rua',
      'get_by_cnpj' => 'Por CNPJ',
      'busca_avancada' => 'Busca avançada'
    }
    current_user.historico_buscas.create(:params => search_params, :tipo_busca => tipos_buscas[params[:action]])
  end
end
