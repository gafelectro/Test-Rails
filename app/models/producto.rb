class Producto < ActiveRecord::Base
  attr_accessible :costo, :nombre, :imagen, :usuario_id
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "50x50>" }
  belongs_to :usuario

  def self.search_and_paginate()
    Producto.find(:all)
  end

end
