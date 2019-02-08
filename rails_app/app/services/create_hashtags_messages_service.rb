class CreateHashtagsMessagesService
    def initialize (message, hashtag)
        @message = message
        @hashtag = hashtag
    end

    def charge
        create_hashtags_messages
    end

    private

    def create_hashtags_messages
        if @message.hashtags.find_by(id: @hashtag.id)
            return false
        end
        hashtags_messages = HashtagsMessages.create(hashtag_id: @hashtag.id, message_id: @message.id)
    end
end