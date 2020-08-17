class Reservation < ApplicationRecord
  belongs_to :trip
  has_many :users, through: :groups
end
