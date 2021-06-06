module EmpresasReceitaCuritibaHelper

  def formatar_endereco(empresa_receita_curitiba)
    return "#{empresa_receita_curitiba.descricaotipologradouro} #{empresa_receita_curitiba.logradouro} #{empresa_receita_curitiba.numero}"
  end
end
