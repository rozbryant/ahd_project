class Favorite < ActiveRecord::Base
    has_many(:users, { :class_name => "User", :foreign_key => "user_id"})
    has_many(:buildings, { :class_name => "Building", :foreign_key => "building_id"})

end
