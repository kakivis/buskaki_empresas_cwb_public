class AddPasswordDigestToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :a1717456_usuarios, :password_digest, :string
  end
end
