class BuildingAttribute < ActiveRecord::Base
  belongs_to :building

  validates :building, :presence => true
end
