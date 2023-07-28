require 'rails_helper'

RSpec.describe ArticlesController do
  describe 'GET #index' do
    subject { get :index }

    it { should have_http_status(:success) }
  end

  describe 'GET #index' do
    before { get :index }

    # Notice that we have to assert have_http_status on the response here...
    it { expect(response).to have_http_status(:success) }
  end 
end