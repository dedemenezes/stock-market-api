class Stock < ApplicationRecord
  belongs_to :bearers
  belongs_to :market_prices
end
