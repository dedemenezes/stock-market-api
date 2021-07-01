class CreateMarketPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :market_prices do |t|
      t.string :currency
      t.integer :value_cents

      t.timestamps
    end
  end
end
