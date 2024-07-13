class Bag < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include Geocoder::Model::ActiveRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :photo

  validates :brand, :state, :capacity, :usage, :address, :daily_price, :weight, presence: true


end
