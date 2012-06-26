class Producto < ActiveRecord::Base
  attr_accessible :costo, :nombre, :imagen
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "50x50>" }
end
