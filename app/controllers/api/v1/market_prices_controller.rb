class Api::V1::MarketPricesController < Api::V1::BaseController
  def show
    @mktprice = MarketPrice.find(params[:id])
    authorize @mktprice
  end

  def create
    @mktprice = MarketPrice.new(market_price_params)
    authorize @mktprice
    if @mktprice.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def market_price_params
    params.require(:market_price).permit(:value_cents, :currency)
  end

  def render_error
    render json: { errors: @mktprices.errors.full_messages },
      status: :unprocessable_entity
  end
end