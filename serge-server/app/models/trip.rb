class Trip < ApplicationRecord
  belongs_to :user
  has_many :reservations
end
