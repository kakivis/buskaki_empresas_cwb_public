class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :a1717456_usuarios do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
