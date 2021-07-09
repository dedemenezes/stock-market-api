require 'pry-byebug'
class Api::V1::ClientsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: %i[create]
  #skip_before_action :verify_authenticity_toke, only: %i[create]

  def create
    @user = User.new(user_params)
    binding.pry
  end

  private

  def user_params
    binding.pry
  end
end
