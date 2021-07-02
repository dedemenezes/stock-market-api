class Api::V1::BearersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  
  def show
    @bearer = Bearer.find(params[:id])
    authorize @bearer
  end
  
  def create
    @bearer = Bearer.new(bearer_params)
    @bearer.user = current_user
    authorize @bearer
    if @bearer.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def bearer_params
    params.require(:bearer).permit(:name)
  end

  def render_error
    render json: { errors: @bearer.errors.full_messages },
      status: :unprocessable_entity
  end
end