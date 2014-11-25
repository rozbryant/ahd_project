class Amenity < ActiveRecord::Base
  belongs_to :building

  validates :building, :presence => true

end
