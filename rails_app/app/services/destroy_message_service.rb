class DestroyMessageService
    def initialize (message)
        @message = message
    end

    def charge
        destroy_message
    end

    private

    def destroy_message
        @message.destroy
    end
end