class Buildinghood < ActiveRecord::Base
    has_many :buildings
    has_many :neighborhoods

end
