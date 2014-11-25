class Address < ActiveRecord::Base
  belongs_to(:building, { :class_name => "Building", :foreign_key => "address_id" })

  validates :streetaddress, :presence => true
  validates :streetaddress, :uniqueness => true

  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true



end
