class Usuario < ActiveRecord::Base
  attr_accessible :edad, :name, :avatar
  has_attached_file :avatar, 
                    :styles => { :medium => "300x300>",
                                 :thumb => "50x50>" }  
end
