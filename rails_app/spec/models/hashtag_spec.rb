require 'rails_helper'

RSpec.describe Hashtag, type: :model do
  it 'é válido com hashtag' do
    hashtag = Hashtag.new(hashtag:'#teimozza')
    expect(hashtag).to be_valid
  end
  it 'é inválido sem a hashtag' do
    hashtag = Hashtag.new(hashtag:nil)
    hashtag.valid?
    expect(hashtag.errors[:hashtag]).to include("can't be blank")
  end
end
