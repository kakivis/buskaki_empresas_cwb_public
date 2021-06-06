class EmpresasReceitaCuritiba < ApplicationRecord
  self.table_name = '"DADOS".empresas_receita_curitiba'
  self.primary_key = :cnpj
  attr_accessor :lat, :lng

  def self.filtrar_por_nome(nome)
    nome = ApplicationController.helpers.remove_acentos(nome)
    EmpresasReceitaCuritiba.where("(
        nomeempresarial LIKE '%#{nome}%' OR
        nomefantasia LIKE '%#{nome}%' OR
        levenshtein(nomeempresarial, '#{nome}') < 4 OR
        levenshtein(nomefantasia, '#{nome}') < 4
) AND situacaocadastral != '08'")
  end

  def self.filtrar_por_bairro(bairro)
    bairro = ApplicationController.helpers.remove_acentos(bairro)
    EmpresasReceitaCuritiba.where("(bairro = '#{bairro}' OR levenshtein(bairro, '#{bairro}') < 4) AND situacaocadastral != '08'")
  end

  def self.filtrar_por_rua(rua)
    rua = ApplicationController.helpers.remove_acentos(rua)
    EmpresasReceitaCuritiba.where("(CONCAT(descricaotipologradouro, ' ', logradouro)LIKE'%#{rua}%' OR levenshtein(CONCAT(descricaotipologradouro, ' ',logradouro), '#{rua}') < 4) AND situacaocadastral != '08'")
  end

  def self.filtrar_busca_avancada(nome, bairro, rua, cep)
    nome = ApplicationController.helpers.remove_acentos(nome)
    bairro = ApplicationController.helpers.remove_acentos(bairro)
    rua = ApplicationController.helpers.remove_acentos(rua)
    query = ''
    query += "(nomeempresarial LIKE '%#{nome}%' OR nomefantasia LIKE '%#{nome}%' OR levenshtein(nomeempresarial, '#{nome}') < 4 OR levenshtein(nomefantasia, '#{nome}') < 4)" unless nome.empty?
    query += "#{query.empty? ? '' : 'AND'} (bairro = '#{bairro}' OR levenshtein(bairro, '#{bairro}') < 4)" unless bairro.empty?
    query += "#{query.empty? ? '' : 'AND'} (CONCAT(descricaotipologradouro, ' ', logradouro)LIKE'%#{rua}%' OR levenshtein(CONCAT(descricaotipologradouro, ' ',logradouro), '#{rua}') < 4)" unless rua.empty?
    query += "#{query.empty? ? '' : 'AND'} cep = '#{cep}'" unless cep.empty?
    query += "#{query.empty? ? '' : 'AND'} situacaocadastral != '08'"

    EmpresasReceitaCuritiba.where(query)
  end

  def self.get_by_cnpj(cnpj)
    EmpresasReceitaCuritiba.find_by cnpj: cnpj
  end

  def endereco_completo_google
    "BRASIL, #{municipio}, #{descricaotipologradouro} #{logradouro} #{numero}, #{bairro}"
  end

  def endereco_completo_bing
    "Brazil, #{municipio}, #{descricaotipologradouro} #{logradouro}, #{numero}, #{bairro}"
  end
end
