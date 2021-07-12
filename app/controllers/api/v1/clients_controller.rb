class Api::V1::ClientsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: %i[create]
  #skip_before_action :verify_authenticity_toke, only: %i[create]

  def show
    @user = User.find
  end

  def create
    @user = User.create(user_params)
    @client = Client.new
    @client.user = @user
    authorize @client
    save_n_render(@client)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
