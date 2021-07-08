json.array! @stocks do |stock|
  json.extract! stock, :id, :name, :market_price, :bearer
end

# json.stocks @bearer.stocks do |stock|
#   json.extract! stock, :name
# end