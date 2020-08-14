require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe 'GET #home' do
    it 'returns http success' do
      get '/'
      expect(response.status).to eq 200
    end
  end
end
