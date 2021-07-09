class Api::V1::MarketPricesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: %i[index show]

  def show
    @mktprice = MarketPrice.find(params[:id])
    authorize @mktprice
  end

  def create
    @mktprice = MarketPrice.new(market_price_params)
    authorize @mktprice
    save_n_render(@mktprice)
  end

  private

  def market_price_params
    params.require(:market_price).permit(:value_cents, :currency)
  end
end
