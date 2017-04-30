require "rails_helper"

RSpec.describe CharitiesController, :type => :controller do
  describe "GET #index" do
    let(:location) { FactoryGirl.create(:location, state: "MG",
                                        city: "BH", district: "Pampulha") }
    let(:other_location) { FactoryGirl.create(:location, state: "SP",
                                              city: "SP", district: "Centro") }
    let!(:charity) { FactoryGirl.create(:charity, location: location) }
    let!(:other_charity) { FactoryGirl.create(:charity, location: other_location) }

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
      expect(parsed_body["charities"].length).to be(2)
      expect(parsed_body["charities"].first).to include("id")
    end

    it "should execute call method from serializer" do
      serializer = double(:serializer)
      allow(serializer).to receive(:call)
      allow(subject).to receive(:serializer) { serializer }

      expect(serializer).to receive(:call)
      get :index
    end

    it "should filter by state" do
      get :index, params: { state: "MG" }
      parsed_body = JSON.parse(response.body)
      expect(parsed_body).to include("charities")
      expect(parsed_body["charities"].length).to be(1)
    end

    it "should filter by state and city" do
      get :index, params: { state: "MG", city: "BH" }
      parsed_body = JSON.parse(response.body)
      expect(parsed_body).to include("charities")
      expect(parsed_body["charities"].length).to be(1)
    end

    it "should filter by state, city and district" do
      get :index, params: { state: "MG", city: "BH", district: "Pampulha" }
      parsed_body = JSON.parse(response.body)
      expect(parsed_body).to include("charities")
      expect(parsed_body["charities"].length).to be(1)
    end
  end
end
