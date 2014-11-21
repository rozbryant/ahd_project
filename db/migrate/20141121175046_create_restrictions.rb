class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.string :building_id
      t.boolean :pet
      t.boolean :rental
      t.boolean :credit
      t.boolean :reference
      t.boolean :interview
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
