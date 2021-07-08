class Stock < ApplicationRecord
  belongs_to :bearer
  belongs_to :market_price

  validates :name, :bearer, :market_price, presence: true
end
