require 'rails_helper'

RSpec.describe "Charities", type: :request do
  describe "GET /charities" do
    it "should receive 200 status code" do
      get charities_path
      expect(response).to have_http_status(200)
    end
  end
end
