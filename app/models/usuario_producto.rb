class UsuarioProducto < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :cantidad, :descripcion
end
