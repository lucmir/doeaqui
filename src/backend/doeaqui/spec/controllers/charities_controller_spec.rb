require "rails_helper"

RSpec.describe CharitiesController, :type => :controller do
  describe "GET #index" do
    let!(:charity) { FactoryGirl.create(:charity) }

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "responds with charities data" do
      get :index
      #TODO validate that response is not empty and has one key "charities"
      puts response.body
    end
  end
end
