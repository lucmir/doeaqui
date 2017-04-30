require "rails_helper"

RSpec.describe CharityService do
  describe "fetch_charities" do
    let(:location) { FactoryGirl.create(:location, city: "BH", district: "Pampulha") }
    let!(:charity) { FactoryGirl.create(:charity, location: location) }
    let(:other_location) { FactoryGirl.create(:location, city: "SP", district: "Centro") }
    let!(:other_charity) { FactoryGirl.create(:charity, location: other_location) }

    it "returns all charities if no filter specified" do
      charities = subject.fetch_charities
      expect(charities.length).to be(2)
    end

    it "returns charities filtered by city" do
      filtered_charities = subject.fetch_charities("BH")
      expect(filtered_charities.length).to be(1)
      expect(filtered_charities.first.location.city).to eq("BH")
    end

    it "returns charities filtered by city and district" do
      filtered_charities = subject.fetch_charities("BH", "Pampulha")
      expect(filtered_charities.length).to be(1)
      expect(filtered_charities.first.location.city).to eq("BH")
      expect(filtered_charities.first.location.district).to eq("Pampulha")
    end
  end
end
