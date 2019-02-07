class SearchTweetsJob < ApplicationJob
  require 'sidekiq'
  require 'sidekiq-scheduler'
  require_relative '../../lib/twittes'
  include Twittes
  include Sidekiq::Worker


  queue_as :default

  def perform(*args)
    # Do something later

    hashtags = Hashtag.all
    #busca todas os tweets relacionado com cada hashtag cadastrada
    hashtags.each do |hashtag|
      
      tweets = CLIENT.search("#{hashtag.hashtag} -rt")
      tweets.each do |tweet|
        
        message = Message.find_by id_tweet: tweet.id.to_s
        
        # 1- verifica se já existe alguma mensagem cadastrada e caso não tenha já adiciona a mensagem
        # 2- caso ja tenha mensagem cadastrada e já exista a relação com hastag não faz nada
        if not(message)
          message = Message.create(
            content:tweet.text, 
            author:tweet.user.name, 
            data:tweet.created_at,
            id_tweet:tweet.id.to_s
          )
        elsif message.hashtags.find_by(id: hashtag.id)
            next
        end
        #cria relação da hastag com a mensagem.
        #p.s: so cria a relação se ela não existir
        hashtags_messages = HashtagsMessages.create(hashtag_id:hashtag.id, message_id:message.id)
      end
    end
  end
end
