class Stock < ApplicationRecord
  belongs_to :bearers
  belongs_to :market_prices

  validates :name, :bearer, :market_price, presence: true
end
