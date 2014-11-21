class Building < ActiveRecord::Base
  has_many(:amenities, { :class_name => "Amenity", :foreign_key => "building_id"})

  has_many(:addresses, { :class_name => "Address", :foreign_key => "building_id"})
end
