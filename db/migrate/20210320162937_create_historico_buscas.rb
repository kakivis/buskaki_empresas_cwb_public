class CreateHistoricoBuscas < ActiveRecord::Migration[6.0]
  def change
    create_table :a1717456_historico_buscas do |t|
      t.references :usuario, index: true, null: false, foreign_key: {to_table: :a1717456_usuarios}
      t.string :tipo_busca
      t.string :params

      t.timestamps
    end
  end
end
