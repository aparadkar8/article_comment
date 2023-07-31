require 'rails_helper'

RSpec.describe ArticlesController do
  it do
    params = {
      article: {
        title: 'DEmo test',
        body: 'asdfghjklkjhgfdsa'
      }
    }
    should permit(:title, :body).
      for(:create, params: params).
      on(:article)
  end
  describe 'GET #index' do
    subject { get :index }

    it { should have_http_status(:success) }
  end

  it { should route(:get, '/articles').to(action: :index) }
  it { should route(:get, '/articles/1').to(action: :show,id: 1) }
  it do
    should route(:get, '/articles', port: 3000).
      to('articles#index')
  end
  # it { should_nogem use_around_action(:wrap_in_transaction) }

end