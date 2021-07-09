class FirstJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Starting my job!"
    sleep(2)
    puts "bye from your worker"
    # Do something later
  end
end
