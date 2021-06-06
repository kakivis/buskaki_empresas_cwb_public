class HistoricoBusca < ApplicationRecord
  self.table_name = 'public.a1717456_historico_buscas'
  belongs_to :usuario
end
