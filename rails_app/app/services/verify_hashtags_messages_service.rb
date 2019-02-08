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
            #verifica se ainda existe alguma relação entre a mensagem e alguma hastag
            #se não houver relação, então deleta a mensagem, pois não existe mais relacionamento nem um
            puts '---------------'
            puts m.hashtags.all.count
            if (m.hashtags.count == 1)
               DestroyMessageService.new(m).charge                
            end
         end
    end
end
    