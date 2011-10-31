class Discoteca < ActiveRecord::Base
validates :nombre, :cod_ciudad, :presence => true
end
