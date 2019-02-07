require 'sidekiq-scheduler'
class HelloWorldWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts 'hello world'
  end
end
