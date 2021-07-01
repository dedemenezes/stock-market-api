class RenameMarketPricesToMarketPriceOnStocks < ActiveRecord::Migration[6.1]
  def change
    rename_column :stocks, :market_prices_id, :market_price_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
