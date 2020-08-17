class User < ApplicationRecord
    has_secure_password

    validates_uniqueness_of :username
    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :trips
    has_many :reservations, through: :groups
end
