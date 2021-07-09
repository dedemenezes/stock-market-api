class FirstJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Starting my job!"
    puts "zo/"
    puts "zo_"
    puts "zo/"
    puts user.admin?
    sleep(2)
    puts "bye from your worker"
    # Do something later
  end
end
