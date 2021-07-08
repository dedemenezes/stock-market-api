json.array! @stocks do |stock|
  json.extract! stock, :id, :market_price, :name, :bearer
end

# json.stocks @bearer.stocks do |stock|
#   json.extract! stock, :name
# end