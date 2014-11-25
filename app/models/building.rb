class Building < ActiveRecord::Base

# One-to-one relationships

  has_one :amenity

  has_one :restriction

  has_one :building_attribute

# One-to-many relationships

  has_many :addresses

  has_many :neighborhoods, :through => :buildinghoods

# Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

  validates :address_id, :presence => true

end
