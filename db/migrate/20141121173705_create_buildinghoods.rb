class CreateBuildinghoods < ActiveRecord::Migration
  def change
    create_table :buildinghoods do |t|
      t.string :building_id
      t.string :neighborhood_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
