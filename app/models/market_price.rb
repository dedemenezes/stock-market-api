class MarketPrice < ApplicationRecord
  has_many :stocks
  
  validates :price, uniqueness: { scope: :currency,
    message: "Price already exists on this currency" }
end
