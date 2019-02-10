
require 'verify_hashtags_messages_service'

class DestroyHashtagService
    def initialize (hashtag)
        @hashtag = hashtag
    end

    def charge
        destroy_hashtag
    end

    private

    def destroy_hashtag
        #pega todas as mensagem que se relaciona com a hashtag que esta sendo deletada
        messages = @hashtag.messages.all
        #chama service para verificar os relacionamentos das mensagems da linha anterior 
        VerifyHashtagsMessagesService.new(messages).charge
        @hashtag.destroy
    end
end