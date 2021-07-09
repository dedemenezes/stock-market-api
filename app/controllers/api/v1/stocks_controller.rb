class Api::V1::StocksController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User
  before_action :set_stock, only: %i[show update destroy]

  def index
    @stocks = policy_scope(Stock).order(:id)
  end

  def show; end

  def create
    @stock = Stock.new(stock_params)
    authorize @stock
    
    save_n_render
  end
  
  def update
    if same_price? && same_bearer?
      @stock.update(stock_params)
      save_n_render
    else
      render_error
    end
  end
  
  def destroy
    binding.pry
    @stock.disable = true
    save_n_render
  end

  private

  def save_n_render
    super(@stock)
  end

  def same_bearer?
    @stock.bearer.id == stock_params[:bearer_id].to_i
  end

  def same_price?
    @stock.market_price.id == stock_params[:market_price_id].to_i
  end

  def stock_params
    params.require(:stock).permit(:name, :bearer_id, :market_price_id)
  end

  def set_stock
    @stock = Stock.find(params[:id])
    authorize @stock
  end
end
