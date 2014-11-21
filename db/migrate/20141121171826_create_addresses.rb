class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :streetaddress
      t.string :city
      t.string :state
      t. :zip

      t.timestamps

    end
  end
end
