class Favorite < ActiveRecord::Base

    has_many :users

    has_many :buildings

    validates :user_id, :presence => true

    validates :building_id, :presence => true

end
