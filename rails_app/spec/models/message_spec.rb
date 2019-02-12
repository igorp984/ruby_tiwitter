require 'rails_helper'


RSpec.describe Message, type: :model do
    it 'é válido com content, author, data, id_tweet' do
        message = Message.create(
            content: 'pizzas deliciosas da #teimozza', 
            author: 'Paim_Red', 
            data:'2019-02-06 01:28:47', 
            id_tweet: 1092958247701499904
        )
        expect(message).to be_valid
    end
    
    it 'é inválido sem a content' do
        message = Message.create(
            content: nil, 
            author: 'Paim_Red', 
            data:'2019-02-06 01:28:47', 
            id_tweet: 1092958247701499904
        )
        message.valid?
        expect(message.errors[:content]).to include("can't be blank")
    end
    
    it 'é inválido sem a author' do
        message = Message.create(
            content: 'pizzas deliciosas da #teimozza', 
            author: nil, 
            data:'2019-02-06 01:28:47', 
            id_tweet: 1092958247701499904
        )
        message.valid?
        expect(message.errors[:author]).to include("can't be blank")
    end
    
    it 'é inválido sem a data' do
        message = Message.create(
            content: 'pizzas deliciosas da #teimozza', 
            author: 'Paim_Red', 
            data: nil, 
            id_tweet: 1092958247701499904
        )
        message.valid?
        expect(message.errors[:data]).to include("can't be blank")
    end

    it 'é inválido sem a id_tweet' do
        message = Message.create(
            content: 'pizzas deliciosas da #teimozza', 
            author: 'Paim_Red', 
            data: '2019-02-06 01:28:4', 
            id_tweet: nil
        )
        message.valid?
        expect(message.errors[:id_tweet]).to include("can't be blank")
    end
end
