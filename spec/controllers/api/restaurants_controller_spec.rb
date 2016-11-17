require_relative '../../rails_helper.rb'

RSpec.describe Api::RestaurantsController do
  describe "GET index" do
    it "responds with OK" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
