Rails.application.routes.draw do
  get 'historico_buscas/index'
  get 'sessions/new'
  get 'usuarios/new'
  get 'usuarios/show'
  post 'usuarios/create'
  scope 'empresas_receita_curitiba' do
    get 'form_busca_avancada', to: 'empresas_receita_curitiba#form_busca_avancada'
    get 'busca_avancada', to: 'empresas_receita_curitiba#busca_avancada'
    get 'form_filtrar_por_nome', to: 'empresas_receita_curitiba#form_filtrar_por_nome'
    get 'filtrar_por_nome', to: 'empresas_receita_curitiba#filtrar_por_nome'
    get 'form_filtrar_por_bairro', to: 'empresas_receita_curitiba#form_filtrar_por_bairro'
    get 'filtrar_por_bairro', to: 'empresas_receita_curitiba#filtrar_por_bairro'
    get 'form_filtrar_por_rua', to: 'empresas_receita_curitiba#form_filtrar_por_rua'
    get 'filtrar_por_rua', to: 'empresas_receita_curitiba#filtrar_por_rua'
    get 'form_cnpj', to: 'empresas_receita_curitiba#form_cnpj'
    get 'get_by_cnpj', to: 'empresas_receita_curitiba#get_by_cnpj'
  end

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  root 'sessions#new'
end
