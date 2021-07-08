require 'pry-byebug'
class Api::V1::StocksController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User
  before_action :set_stock, only: [ :show, :update, :destroy ]

  def index
    @stocks = policy_scope(Stock).order(:id)
    p @stocks
    @stocks
  end

  def show
  end
  
  def create
    @stock = Stock.new(stock_params)
    authorize @stock
    save_n_render
  end

  def update
    if same_price? && same_bearer?
      @stock.update(stock_params)
      render :show, stauts: :created
    else
      render json: { errors: "You can't update #{@stock.market_price.class} and #{@stock.bearer.class} values." },
      status: :unprocessable_entity
    end
  end

  def destroy
    @stock.disable = true
    if @stock.save
      render json: { message: "Stock deleted. Can't be restored."}, status: "202"
    else
      render_error
    end
  end

  private

  def same_bearer?
    @stock.bearer.id == stock_params[:bearer_id].to_i
  end

  def same_price?
    @stock.market_price.id == stock_params[:market_price_id].to_i
  end

  def save_n_render
    if @stock.save
      render :show, stauts: :created
    else
      render_error
    end
  end

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
