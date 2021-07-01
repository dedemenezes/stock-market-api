class Api::V1::BearersController < Api::V1::BaseController
  
  def show
    @bearer = Bearer.find(params[:id])
    authorize @bearer
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