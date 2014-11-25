class Neighborhood < ActiveRecord::Base
  has_many :buildings, :through => :buildinghoods

  validates :name, :presence => true
  validates :name, :uniqueness => true

end
