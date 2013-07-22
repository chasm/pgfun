class CreateStreetAddressesUsers < ActiveRecord::Migration
  def change
    create_table :street_addresses_users do |t|
      t.references :street_address, index: true
      t.references :user, index: true
    end
  end
end
