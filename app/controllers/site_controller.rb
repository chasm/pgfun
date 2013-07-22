class SiteController < ApplicationController
  def index
    @users = User.includes(:phone_numbers, :street_addresses)
  end
end
