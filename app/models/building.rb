class Building < ActiveRecord::Base

  has_one :amenity

  has_one :restriction

  has_one :building_attribute

  has_many :addresses

  has_many :neighborhoods

end
