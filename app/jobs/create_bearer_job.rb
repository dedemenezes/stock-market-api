class CreateBearerJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting my job!"
    puts "zo/"
    puts "zo_"
    puts "zo/"
    @bearer = Bearer.create!(name: "WorkersParty", user: User.last)
    puts "bye from your worker"
  end
end
