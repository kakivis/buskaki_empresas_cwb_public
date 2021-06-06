require 'test_helper'

class EmpresasReceitaCuritibasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empresa_receita_curitiba = empresas_receita_curitibas(:one)
  end

  test "should get index" do
    get empresas_receita_curitibas_url
    assert_response :success
  end

  test "should get new" do
    get new_empresas_receita_curitiba_url
    assert_response :success
  end

  test "should create empresas_receita_curitiba" do
    assert_difference('EmpresasReceitaCuritiba.count') do
      post empresas_receita_curitibas_url, params: { empresa_receita_curitiba: { bairro: @empresa_receita_curitiba.bairro, capitalsocial: @empresa_receita_curitiba.capitalsocial, cep: @empresa_receita_curitiba.cep, cnaefiscal: @empresa_receita_curitiba.cnaefiscal, cnpj: @empresa_receita_curitiba.cnpj, codigomunicipal: @empresa_receita_curitiba.codigomunicipal, codigonaturezajuridica: @empresa_receita_curitiba.codigonaturezajuridica, codigopais: @empresa_receita_curitiba.codigopais, complemento: @empresa_receita_curitiba.complemento, dataexclusaosimples: @empresa_receita_curitiba.dataexclusaosimples, datainicioatividade: @empresa_receita_curitiba.datainicioatividade, dataopcaosimples: @empresa_receita_curitiba.dataopcaosimples, datasituacaocadastral: @empresa_receita_curitiba.datasituacaocadastral, datasituacaoespecial: @empresa_receita_curitiba.datasituacaoespecial, dddfax: @empresa_receita_curitiba.dddfax, dddtelefone1: @empresa_receita_curitiba.dddtelefone1, dddtelefone2: @empresa_receita_curitiba.dddtelefone2, descricaotipologradouro: @empresa_receita_curitiba.descricaotipologradouro, emailcontribuinte: @empresa_receita_curitiba.emailcontribuinte, geom: @empresa_receita_curitiba.geom, idempresas: @empresa_receita_curitiba.idempresas, identificador: @empresa_receita_curitiba.identificador, identificadorfulldiario: @empresa_receita_curitiba.identificadorfulldiario, identificadormatrizfilial: @empresa_receita_curitiba.identificadormatrizfilial, logradouro: @empresa_receita_curitiba.logradouro, motivosituacaocadastral: @empresa_receita_curitiba.motivosituacaocadastral, municipio: @empresa_receita_curitiba.municipio, nomecidadeexterior: @empresa_receita_curitiba.nomecidadeexterior, nomeempresarial: @empresa_receita_curitiba.nomeempresarial, nomefantasia: @empresa_receita_curitiba.nomefantasia, nomepais: @empresa_receita_curitiba.nomepais, numero: @empresa_receita_curitiba.numero, numerofax: @empresa_receita_curitiba.numerofax, opcaomei: @empresa_receita_curitiba.opcaomei, opcaosimples: @empresa_receita_curitiba.opcaosimples, porteempresa: @empresa_receita_curitiba.porteempresa, qualificacaoresponsavel: @empresa_receita_curitiba.qualificacaoresponsavel, situacaocadastral: @empresa_receita_curitiba.situacaocadastral, situacaoespecial: @empresa_receita_curitiba.situacaoespecial, telefone1: @empresa_receita_curitiba.telefone1, telefone2: @empresa_receita_curitiba.telefone2, tipoatualizacao: @empresa_receita_curitiba.tipoatualizacao, uf: @empresa_receita_curitiba.uf } }
    end

    assert_redirected_to empresas_receita_curitiba_url(EmpresasReceitaCuritiba.last)
  end

  test "should show empresas_receita_curitiba" do
    get empresas_receita_curitiba_url(@empresa_receita_curitiba)
    assert_response :success
  end

  test "should get edit" do
    get edit_empresas_receita_curitiba_url(@empresa_receita_curitiba)
    assert_response :success
  end

  test "should update empresas_receita_curitiba" do
    patch empresas_receita_curitiba_url(@empresa_receita_curitiba), params: { empresa_receita_curitiba: { bairro: @empresa_receita_curitiba.bairro, capitalsocial: @empresa_receita_curitiba.capitalsocial, cep: @empresa_receita_curitiba.cep, cnaefiscal: @empresa_receita_curitiba.cnaefiscal, cnpj: @empresa_receita_curitiba.cnpj, codigomunicipal: @empresa_receita_curitiba.codigomunicipal, codigonaturezajuridica: @empresa_receita_curitiba.codigonaturezajuridica, codigopais: @empresa_receita_curitiba.codigopais, complemento: @empresa_receita_curitiba.complemento, dataexclusaosimples: @empresa_receita_curitiba.dataexclusaosimples, datainicioatividade: @empresa_receita_curitiba.datainicioatividade, dataopcaosimples: @empresa_receita_curitiba.dataopcaosimples, datasituacaocadastral: @empresa_receita_curitiba.datasituacaocadastral, datasituacaoespecial: @empresa_receita_curitiba.datasituacaoespecial, dddfax: @empresa_receita_curitiba.dddfax, dddtelefone1: @empresa_receita_curitiba.dddtelefone1, dddtelefone2: @empresa_receita_curitiba.dddtelefone2, descricaotipologradouro: @empresa_receita_curitiba.descricaotipologradouro, emailcontribuinte: @empresa_receita_curitiba.emailcontribuinte, geom: @empresa_receita_curitiba.geom, idempresas: @empresa_receita_curitiba.idempresas, identificador: @empresa_receita_curitiba.identificador, identificadorfulldiario: @empresa_receita_curitiba.identificadorfulldiario, identificadormatrizfilial: @empresa_receita_curitiba.identificadormatrizfilial, logradouro: @empresa_receita_curitiba.logradouro, motivosituacaocadastral: @empresa_receita_curitiba.motivosituacaocadastral, municipio: @empresa_receita_curitiba.municipio, nomecidadeexterior: @empresa_receita_curitiba.nomecidadeexterior, nomeempresarial: @empresa_receita_curitiba.nomeempresarial, nomefantasia: @empresa_receita_curitiba.nomefantasia, nomepais: @empresa_receita_curitiba.nomepais, numero: @empresa_receita_curitiba.numero, numerofax: @empresa_receita_curitiba.numerofax, opcaomei: @empresa_receita_curitiba.opcaomei, opcaosimples: @empresa_receita_curitiba.opcaosimples, porteempresa: @empresa_receita_curitiba.porteempresa, qualificacaoresponsavel: @empresa_receita_curitiba.qualificacaoresponsavel, situacaocadastral: @empresa_receita_curitiba.situacaocadastral, situacaoespecial: @empresa_receita_curitiba.situacaoespecial, telefone1: @empresa_receita_curitiba.telefone1, telefone2: @empresa_receita_curitiba.telefone2, tipoatualizacao: @empresa_receita_curitiba.tipoatualizacao, uf: @empresa_receita_curitiba.uf } }
    assert_redirected_to empresas_receita_curitiba_url(@empresa_receita_curitiba)
  end

  test "should destroy empresas_receita_curitiba" do
    assert_difference('EmpresasReceitaCuritiba.count', -1) do
      delete empresas_receita_curitiba_url(@empresa_receita_curitiba)
    end

    assert_redirected_to empresas_receita_curitibas_url
  end
end
