require 'pry-byebug'
class Api::V1::UsersController < Api::V1::BaseController
  def create
    binding.pry
  end
end