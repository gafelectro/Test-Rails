class Usuario < ActiveRecord::Base
  attr_accessible :edad, :name, :avatar, :tipousuario, :id
  has_attached_file :avatar, 
                    :styles => { :medium => "300x300>",
                                 :thumb => "50x50>" } 
  validates :edad, :length => { :maximum => 8 }
  validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_inclusion_of :avatar_file_size, :in => 0..8000, :message => "The image most be shorter"
  has_many :productos
  has_many :saludos
end
