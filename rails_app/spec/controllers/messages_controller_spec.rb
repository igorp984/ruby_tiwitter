require 'rails_helper'

RSpec.describe MessagesController, type: :controller do   
    
    it '#index: status 200' do
        get :index
        expect(response).to have_http_status(200)
    end
    
    # it '#index filtrado por hashtag: status 200' do
    #     hashtag = create(:hashtag)
    #     get :index, params: {hashtag: hashtag.id}
    #     expect(response).to respondTo(:index)
    # end
    
    it '#show: status 200' do
        message = create(:message)
        get :show, params: {id: message.id}
        expect(response).to have_http_status(200)
    end

end
