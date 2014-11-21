class Address < ActiveRecord::Base
  has_one( :building, { :class_name => "Building", :foreign_key => "address_id"})

end
