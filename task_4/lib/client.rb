class Client
    attr_accessor :messages

    def initialize
        @messages = []
    end

    def message
        @message
    end

    def message=(value)
        @message = value
    end

    def list_of_messages
        @messages
    end
end