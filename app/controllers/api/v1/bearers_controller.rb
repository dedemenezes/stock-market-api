class API::V1::StocksController < API::V1::BaseController
  def show
    @bearer = Bearer.find(params[:id])
  end
  
  def create
    @bearer = Bearer.new(bearer_params)
    @bearer.user = current_user
    if @bearer.save
      render :show
    else
      render_error
    end
  end

  private

  def bearer_params
    params.require(:bearer).permit(:name)
  end
end