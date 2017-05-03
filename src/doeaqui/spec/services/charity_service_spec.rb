require "rails_helper"

RSpec.describe CharityService do
  describe "fetch_charities" do
    let(:location) { FactoryGirl.create(:location, state: "MG",
                                        city: "BH", district: "Pampulha") }
    let(:other_location) { FactoryGirl.create(:location, state: "SP",
                                              city: "SP", district: "Centro") }
    let!(:charity) { FactoryGirl.create(:charity, location: location) }
    let!(:other_charity) { FactoryGirl.create(:charity, location: other_location) }

    it "returns all charities if no filter specified" do
      charities = subject.fetch_charities
      expect(charities.length).to be(2)
    end

    it "returns charities filtered by state" do
      filtered_charities = subject.fetch_charities("MG")
      expect(filtered_charities.length).to be(1)
      expect(filtered_charities.first.location.state).to eq("MG")
    end

    it "returns charities filtered by state and city" do
      filtered_charities = subject.fetch_charities("MG", "BH")
      expect(filtered_charities.length).to be(1)
      expect(filtered_charities.first.location.state).to eq("MG")
      expect(filtered_charities.first.location.city).to eq("BH")
    end

    it "returns charities filtered by state, city and district" do
      filtered_charities = subject.fetch_charities("MG", "BH", "Pampulha")
      expect(filtered_charities.length).to be(1)
      expect(filtered_charities.first.location.state).to eq("MG")
      expect(filtered_charities.first.location.city).to eq("BH")
      expect(filtered_charities.first.location.district).to eq("Pampulha")
    end
  end
end
