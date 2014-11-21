class CreateBuildingAttributes < ActiveRecord::Migration
  def change
    create_table :building_attributes do |t|
      t.string :building_id
      t.string :ownership
      t.integer :unit_count
      t.integer :stories
      t.text :notes
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
