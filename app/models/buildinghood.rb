class Buildinghood < ActiveRecord::Base
    has_many(:buildings, { :class_name => "Building", :foreign_key => "building_id"})
    has_many(:neighborhoods, { :class_name => "Neighborhood", :foreign_key => "neighborhood_id"})

end
