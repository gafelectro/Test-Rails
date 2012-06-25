class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos do |t|
      t.string :caballo
      t.integer :time
      t.float :velocidad
      t.string :jinete

      t.timestamps
    end
  end
end
