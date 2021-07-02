class MarketPrice < ApplicationRecord
  has_many :stocks
  
  validates :value_cents, uniqueness: { scope: :currency,
    message: "Price already exists on this currency" }
  validates :currency, :value_cents, presence: true
end
