class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.integer :edad

      t.timestamps
    end
  end
end
