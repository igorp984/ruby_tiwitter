class VerifyHashtagsMessagesService
    def initialize (messages)
        @messages = messages
        @resul = false
    end

    def charge
        verify_hashtags_messages
    end

    private

    def verify_hashtags_messages
        
        @messages.each do |m|
            #verifica se a unica relação da mensagem é com hastag que ta sendo apagada
            #se for, apaga a mensagem também, já que ela não irá mas possuir relação com hashtags
            if (m.hashtags.count == 1)
               DestroyMessageService.new(m).charge                
            end
         end
    end
end
    