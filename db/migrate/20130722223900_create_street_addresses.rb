class CreateStreetAddresses < ActiveRecord::Migration
  def change
    create_table :street_addresses do |t|
      t.string :street
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
