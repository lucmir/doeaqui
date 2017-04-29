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
      expect(response.body).not_to be_empty
      parsed_body = JSON.parse(response.body)
      expect(parsed_body).to include("charities")
      expect(parsed_body["charities"].length).to be(1)
      expect(parsed_body["charities"].first).to include("id")
    end

    it "should execute call method from serializer" do
      serializer = double(:serializer)
      allow(serializer).to receive(:call) { 1 }
      allow(subject).to receive(:serializer) { serializer }

      expect(serializer).to receive(:call)
      get :index
    end
  end
end
