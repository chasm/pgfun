class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :digits
      t.string :phone_type
      t.string :ext
      t.references :user

      t.timestamps
    end
  end
end
