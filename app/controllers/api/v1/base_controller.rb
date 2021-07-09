class Api::V1::BaseController < ActionController::API
  include Pundit

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  rescue_from Pundit::NotAuthorizedError,   with: :user_not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def save_n_render(instance)
    if instance.save
      render :show, stauts: :created
    else
      render_error
    end
  end

  def render_error
    render json:
    {
      errors: @stock.errors.full_messages
    }, status: :unprocessable_entity
  end

  private

  def action_calling?(action)
    regex = /^.*#{action}.*/
    caller[0].match(regex).present?
  end

  def user_not_authorized(exception)
    render json: {
      error: "Unauthorized #{exception.policy.class.to_s.underscore.camelize}.#{exception.query}"
    }, status: :unauthorized
  end

  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end
end