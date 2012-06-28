class AddUsuarioIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :usuario_id, :integer
  end
    add_index :productos, :usuario_id
end
