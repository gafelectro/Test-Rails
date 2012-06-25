class Juego < ActiveRecord::Base
  attr_accessible :caballo, :jinete, :time, :velocidad
end
