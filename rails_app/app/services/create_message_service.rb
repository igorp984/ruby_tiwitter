
require_relative './create_hashtags_messages_service'
require_relative './verify_hashtags_messages_service'

class CreateMessageService
    def initialize (tweets, hashtag)
        @tweets = tweets
        @hashtag = hashtag
    end

    def charge
        create_message
    end

    private

    def create_message
        @tweets.each do |tweet|
            
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
                mensagem_criada = 'mensagem_criada'
            end
            #chama o service que cria relação da hastag com a mensagem.
            #p.s: so cria a relação se ela não existir
                       
            CreateHashtagsMessagesService.new(message, @hashtag).charge
            mensagem_criada
        end
    end
end