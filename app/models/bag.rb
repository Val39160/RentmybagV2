class Bag < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :brand, :state, :capacity, :usage, :address, :daily_price, presence: true
end
