class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :user_id
      t.string :building_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
