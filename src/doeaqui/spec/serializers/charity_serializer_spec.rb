require "rails_helper"

RSpec.describe CharitySerializer do
  describe "#call" do
    let(:charity) { FactoryGirl.build(:charity, id: 1) }

    it "returns a serialized object as a hash" do
      serialized_charity = subject.call(charity)
      expect(serialized_charity).to eq({
        id: 1,
        name: "The Foundation",
        description: "A short description",
        location: {
          state: "MG",
          city: "Sete Lagoas",
          district: "Mangabeiras",
          street: "Cracovia",
          number: "139",
          complement: "1"
        }
      })
    end
  end
end
