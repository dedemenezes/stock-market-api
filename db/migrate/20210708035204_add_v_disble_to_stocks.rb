class AddVDisbleToStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :disable, :boolean, default: false
  end
end
