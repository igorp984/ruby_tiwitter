require 'rails_helper'

RSpec.describe Hashtag, type: :model do
    it 'Criando hashtag' do
        subject.hashtag = "#vamosvencer"
        expect(subject.hashtag).to eq('#vamosvencer')
    end
    it 'Deletando' do
        subject.find(1).destroy
    end
end