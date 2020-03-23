require 'client'
require 'message'

describe Client do
    it 'returns message title' do
        message = double('message')

        allow(message).to receive(:title) { 'Title' }

        client = Client.new
        client.message = message
        expect(client.message.title).to eq 'Title'
    end

    it 'returns list of messages' do
        client = Client.new
        message = Message.new
        client.message = message
        client1 = Client.new
        mr = MailReporter.new
        mr.send(client, client1)
        expect(client1.list_of_messages).to eq [message]
    end
end