class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bag

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true
  validates :user, presence: true
  validates :bag, presence: true
  validates :status, inclusion: { in: ['acceptée', 'en cours', 'declinée'] }
end

# rajouter les validations
