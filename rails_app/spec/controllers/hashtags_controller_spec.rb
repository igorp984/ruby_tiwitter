require 'rails_helper'

RSpec.describe HashtagsController, type: :controller do
    
    it '#index: status 200' do
        get :index
        expect(response).to have_http_status(200)
    end

    it '#show: status 200' do
        hashtag = create(:hashtag)
        get :show, params: {id: hashtag.id}
        expect(response).to have_http_status(200)
    end

    it '#edit: status 200' do
        hashtag = create(:hashtag)
        get :show, params: {id: hashtag.id}
        expect(response).to have_http_status(200)
    end

    it '#create válido' do
        hashtag = create(:hashtag)
        hashtag_params = attributes_for(:hashtag)
        expect {
            post :create, params: {hashtag: hashtag_params}
        }.to change(Hashtag, :count).by(1)
    end

    it '#create inválido' do
        hashtag = create(:hashtag)
        hashtag_params = attributes_for(:hashtag, hashtag: nil)
        expect {
            post :create, params: {hashtag: hashtag_params}
        }.not_to change(Hashtag, :count)
    end

    it '#delete' do
        hashtag = create(:hashtag)
        hashtag_params = attributes_for(:hashtag)
        expect {
            post :destroy, params: {id: hashtag.id}
        }.to change(Hashtag, :count).by(-1)
    end

end
