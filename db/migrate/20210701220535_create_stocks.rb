class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.references :bearers, null: false, foreign_key: true
      t.references :market_prices, null: false, foreign_key: true

      t.timestamps
    end
  end
end
