class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  # after_commit :async_update, on: [:home]

  def home
    CreateBearerJob.perform_later
    @bearer = Bearer.last
  end

  # def async_update
  #   UpdateJob.perform_later(@bearer.id)
  # end
end
