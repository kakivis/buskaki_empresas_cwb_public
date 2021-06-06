class Alvara < PostgiscwbDbBase
  self.table_name = 'prefeitura.alvara'

  def self.buscar_por_nome(nomeempresarial, nomefantasia)
    query = ''
    query += "nome_empresarial LIKE '%#{nomeempresarial}%'" unless nomeempresarial.empty?
    query += "#{query.empty? ? '' : 'OR'} nome_empresarial LIKE '%#{nomefantasia}%'" unless nomefantasia.empty?
    Alvara.where(query).first
  end
end
