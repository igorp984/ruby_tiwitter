
require 'verify_hashtags_messages_service'
require 'json'
class DestroyHashtagService
    def initialize (hashtag)
        @hashtag = hashtag
    end

    def charge
        destroy_hashtag
    end

    private

    def destroy_hashtag
        messages = @hashtag.messages.all
        puts '-------------'
        VerifyHashtagsMessagesService.new(messages).charge
        @hashtag.destroy
        puts '--------'
         
    end
end