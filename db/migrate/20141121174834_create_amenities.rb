class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :building_id
      t.boolean :parking
      t.boolean :guest_parking
      t.boolean :doorperson
      t.boolean :fitness
      t.boolean :biz_center
      t.boolean :pool
      t.boolean :package_receiving
      t.boolean :catering
      t.boolean :housekeeping
      t.boolean :party_room
      t.boolean :bike_storage
      t.boolean :storage
      t.boolean :dry_cleaning
      t.boolean :conf_room
      t.boolean :sundeck
      t.boolean :spa
      t.boolean :guest_stay
      t.boolean :restaurant
      t.boolean :private_club
      t.boolean :concierge
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
