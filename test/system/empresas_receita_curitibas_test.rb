require "application_system_test_case"

class EmpresasReceitaCuritibasTest < ApplicationSystemTestCase
  setup do
    @empresa_receita_curitiba = empresas_receita_curitibas(:one)
  end

  test "visiting the index" do
    visit empresas_receita_curitibas_url
    assert_selector "h1", text: "Empresas Receita Curitibas"
  end

  test "creating a Empresas receita curitiba" do
    visit empresas_receita_curitibas_url
    click_on "New Empresas Receita Curitiba"

    fill_in "Bairro", with: @empresa_receita_curitiba.bairro
    fill_in "Capitalsocial", with: @empresa_receita_curitiba.capitalsocial
    fill_in "Cep", with: @empresa_receita_curitiba.cep
    fill_in "Cnaefiscal", with: @empresa_receita_curitiba.cnaefiscal
    fill_in "Cnpj", with: @empresa_receita_curitiba.cnpj
    fill_in "Codigomunicipal", with: @empresa_receita_curitiba.codigomunicipal
    fill_in "Codigonaturezajuridica", with: @empresa_receita_curitiba.codigonaturezajuridica
    fill_in "Codigopais", with: @empresa_receita_curitiba.codigopais
    fill_in "Complemento", with: @empresa_receita_curitiba.complemento
    fill_in "Dataexclusaosimples", with: @empresa_receita_curitiba.dataexclusaosimples
    fill_in "Datainicioatividade", with: @empresa_receita_curitiba.datainicioatividade
    fill_in "Dataopcaosimples", with: @empresa_receita_curitiba.dataopcaosimples
    fill_in "Datasituacaocadastral", with: @empresa_receita_curitiba.datasituacaocadastral
    fill_in "Datasituacaoespecial", with: @empresa_receita_curitiba.datasituacaoespecial
    fill_in "Dddfax", with: @empresa_receita_curitiba.dddfax
    fill_in "Dddtelefone1", with: @empresa_receita_curitiba.dddtelefone1
    fill_in "Dddtelefone2", with: @empresa_receita_curitiba.dddtelefone2
    fill_in "Descricaotipologradouro", with: @empresa_receita_curitiba.descricaotipologradouro
    fill_in "Emailcontribuinte", with: @empresa_receita_curitiba.emailcontribuinte
    fill_in "Geom", with: @empresa_receita_curitiba.geom
    fill_in "Idempresas", with: @empresa_receita_curitiba.idempresas
    fill_in "Identificador", with: @empresa_receita_curitiba.identificador
    fill_in "Identificadorfulldiario", with: @empresa_receita_curitiba.identificadorfulldiario
    fill_in "Identificadormatrizfilial", with: @empresa_receita_curitiba.identificadormatrizfilial
    fill_in "Logradouro", with: @empresa_receita_curitiba.logradouro
    fill_in "Motivosituacaocadastral", with: @empresa_receita_curitiba.motivosituacaocadastral
    fill_in "Municipio", with: @empresa_receita_curitiba.municipio
    fill_in "Nomecidadeexterior", with: @empresa_receita_curitiba.nomecidadeexterior
    fill_in "Nomeempresarial", with: @empresa_receita_curitiba.nomeempresarial
    fill_in "Nomefantasia", with: @empresa_receita_curitiba.nomefantasia
    fill_in "Nomepais", with: @empresa_receita_curitiba.nomepais
    fill_in "Numero", with: @empresa_receita_curitiba.numero
    fill_in "Numerofax", with: @empresa_receita_curitiba.numerofax
    fill_in "Opcaomei", with: @empresa_receita_curitiba.opcaomei
    fill_in "Opcaosimples", with: @empresa_receita_curitiba.opcaosimples
    fill_in "Porteempresa", with: @empresa_receita_curitiba.porteempresa
    fill_in "Qualificacaoresponsavel", with: @empresa_receita_curitiba.qualificacaoresponsavel
    fill_in "Situacaocadastral", with: @empresa_receita_curitiba.situacaocadastral
    fill_in "Situacaoespecial", with: @empresa_receita_curitiba.situacaoespecial
    fill_in "Telefone1", with: @empresa_receita_curitiba.telefone1
    fill_in "Telefone2", with: @empresa_receita_curitiba.telefone2
    fill_in "Tipoatualizacao", with: @empresa_receita_curitiba.tipoatualizacao
    fill_in "Uf", with: @empresa_receita_curitiba.uf
    click_on "Create Empresas receita curitiba"

    assert_text "Empresas receita curitiba was successfully created"
    click_on "Back"
  end

  test "updating a Empresas receita curitiba" do
    visit empresas_receita_curitibas_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @empresa_receita_curitiba.bairro
    fill_in "Capitalsocial", with: @empresa_receita_curitiba.capitalsocial
    fill_in "Cep", with: @empresa_receita_curitiba.cep
    fill_in "Cnaefiscal", with: @empresa_receita_curitiba.cnaefiscal
    fill_in "Cnpj", with: @empresa_receita_curitiba.cnpj
    fill_in "Codigomunicipal", with: @empresa_receita_curitiba.codigomunicipal
    fill_in "Codigonaturezajuridica", with: @empresa_receita_curitiba.codigonaturezajuridica
    fill_in "Codigopais", with: @empresa_receita_curitiba.codigopais
    fill_in "Complemento", with: @empresa_receita_curitiba.complemento
    fill_in "Dataexclusaosimples", with: @empresa_receita_curitiba.dataexclusaosimples
    fill_in "Datainicioatividade", with: @empresa_receita_curitiba.datainicioatividade
    fill_in "Dataopcaosimples", with: @empresa_receita_curitiba.dataopcaosimples
    fill_in "Datasituacaocadastral", with: @empresa_receita_curitiba.datasituacaocadastral
    fill_in "Datasituacaoespecial", with: @empresa_receita_curitiba.datasituacaoespecial
    fill_in "Dddfax", with: @empresa_receita_curitiba.dddfax
    fill_in "Dddtelefone1", with: @empresa_receita_curitiba.dddtelefone1
    fill_in "Dddtelefone2", with: @empresa_receita_curitiba.dddtelefone2
    fill_in "Descricaotipologradouro", with: @empresa_receita_curitiba.descricaotipologradouro
    fill_in "Emailcontribuinte", with: @empresa_receita_curitiba.emailcontribuinte
    fill_in "Geom", with: @empresa_receita_curitiba.geom
    fill_in "Idempresas", with: @empresa_receita_curitiba.idempresas
    fill_in "Identificador", with: @empresa_receita_curitiba.identificador
    fill_in "Identificadorfulldiario", with: @empresa_receita_curitiba.identificadorfulldiario
    fill_in "Identificadormatrizfilial", with: @empresa_receita_curitiba.identificadormatrizfilial
    fill_in "Logradouro", with: @empresa_receita_curitiba.logradouro
    fill_in "Motivosituacaocadastral", with: @empresa_receita_curitiba.motivosituacaocadastral
    fill_in "Municipio", with: @empresa_receita_curitiba.municipio
    fill_in "Nomecidadeexterior", with: @empresa_receita_curitiba.nomecidadeexterior
    fill_in "Nomeempresarial", with: @empresa_receita_curitiba.nomeempresarial
    fill_in "Nomefantasia", with: @empresa_receita_curitiba.nomefantasia
    fill_in "Nomepais", with: @empresa_receita_curitiba.nomepais
    fill_in "Numero", with: @empresa_receita_curitiba.numero
    fill_in "Numerofax", with: @empresa_receita_curitiba.numerofax
    fill_in "Opcaomei", with: @empresa_receita_curitiba.opcaomei
    fill_in "Opcaosimples", with: @empresa_receita_curitiba.opcaosimples
    fill_in "Porteempresa", with: @empresa_receita_curitiba.porteempresa
    fill_in "Qualificacaoresponsavel", with: @empresa_receita_curitiba.qualificacaoresponsavel
    fill_in "Situacaocadastral", with: @empresa_receita_curitiba.situacaocadastral
    fill_in "Situacaoespecial", with: @empresa_receita_curitiba.situacaoespecial
    fill_in "Telefone1", with: @empresa_receita_curitiba.telefone1
    fill_in "Telefone2", with: @empresa_receita_curitiba.telefone2
    fill_in "Tipoatualizacao", with: @empresa_receita_curitiba.tipoatualizacao
    fill_in "Uf", with: @empresa_receita_curitiba.uf
    click_on "Update Empresas receita curitiba"

    assert_text "Empresas receita curitiba was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresas receita curitiba" do
    visit empresas_receita_curitibas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresas receita curitiba was successfully destroyed"
  end
end
