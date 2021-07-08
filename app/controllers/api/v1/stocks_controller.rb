class Api::V1::StocksController < Api::V1::BaseController
  before_action :set_stock, only: [ :show ]

  def index
    @stocks = policy_scope(Stock)
  end

  def show
  end

  def create
    @stock = Stock.new(stock_params)
    authorize @stock
    if @stock.save
      render :show, stauts: :created
    else
      render_error
    end
  end
  
  private

  def stock_params
    params.require(:stock).permit(:name, :bearer_id, :market_price_id)
  end
  
  def set_stock
    @stock = Stock.find(params[:id])
    authorize @stock
  end

  def render_error
    render json: { errors: @stock.errors.full_messages },
      status: :unprocessable_entity
  end
end