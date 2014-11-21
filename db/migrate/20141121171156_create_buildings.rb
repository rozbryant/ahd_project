class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address_id
      t.string :image_url
      t.text :headline
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
