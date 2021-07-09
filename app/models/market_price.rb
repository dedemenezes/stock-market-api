class MarketPrice < ApplicationRecord
  has_many :stocks

  validates :value_cents, presence: true
  validates :currency, presence: true
  validates :value_cents, uniqueness: { scope: :currency,
    message: "Price already exists on this currency" }
end

