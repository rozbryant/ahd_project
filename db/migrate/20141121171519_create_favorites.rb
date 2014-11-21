class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :user_id
      t.string :building_id
      t.string :neighborhood_id

      t.timestamps

    end
  end
end
