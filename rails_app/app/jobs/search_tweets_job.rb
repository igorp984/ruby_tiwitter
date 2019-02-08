require 'sidekiq'
require 'sidekiq-scheduler'
require_relative '../../lib/twittes'
require_relative '../services/create_message_service'

class SearchTweetsJob < ApplicationJob
  include Twittes

  queue_as :default

  def perform(*args)
    # Do something later

    hashtags = Hashtag.all
    #busca todas os tweets relacionado com cada hashtag cadastrada
    hashtags.each do |hashtag|

      tweets = CLIENT.search("#{hashtag.hashtag} -rt")
      CreateMessageService.new(tweets, hashtag).charge
    end
  end
end
