require 'mailreporter.rb'
require 'message.rb'

describe MailReporter do
    before(:each) do
        @mailreporter = MailReporter.new
        @client1 = Client.new
        @client2 = Client.new
    end

    it 'creates mailreporter class' do
        expect(@mailreporter).to be_kind_of(MailReporter)
    end

    it 'has method "send"' do
        expect(@mailreporter).to respond_to(:send)
    end

    it 'returns state of sending' do
        expect(@mailreporter.send(@client1, @client2)).not_to be_nil
    end

    it 'sends message' do
        @client1.message = Message.new
        expect(@mailreporter.send(@client1, @client2)).to be true
    end

    it 'deliveded message' do
        @client1.message = Message.new 
        @mailreporter.send(@client1, @client2)
        expect(@client2.list_of_messages).not_to eq []
    end
end