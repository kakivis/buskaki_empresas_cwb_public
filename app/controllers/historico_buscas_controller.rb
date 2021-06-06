class HistoricoBuscasController < ApplicationController
  before_action :authorize
  def index
    @pagy, @historico_buscas = pagy(current_user.historico_buscas)
  end
end
