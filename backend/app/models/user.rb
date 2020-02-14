class User < ActiveRecord::Base
    has_many :likes
    has_many :listings, through: :likes
    has_many :contacts
    has_secure_password
end

# render json: current_user.listings