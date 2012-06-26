class AddImagesProductos2 < ActiveRecord::Migration
    def self.up
      add_column :productos, :avatar_file_name,    :string
      add_column :productos, :avatar_content_type, :string
      add_column :productos, :avatar_file_size,    :integer
      add_column :productos, :avatar_updated_at,   :datetime
    end

    def self.down
      remove_column :productos, :avatar_file_name
      remove_column :productos, :avatar_content_type
      remove_column :productos, :avatar_file_size
      remove_column :productos, :avatar_updated_at
    end

end



