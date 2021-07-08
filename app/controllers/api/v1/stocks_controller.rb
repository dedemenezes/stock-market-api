class Api::V1::StocksController < Api::V1::BaseController
  before_action :set_stock, only: [ :show ]

  def show
  end
  
  private
  
  def set_stock
    @stock = Stock.find(params[:id])
    authorize @stock
  end
end