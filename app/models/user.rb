class User < ActiveRecord::Base
  has_many :phone_numbers, dependent: :destroy
  has_and_belongs_to_many :street_addresses
end
