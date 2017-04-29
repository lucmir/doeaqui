require "rails_helper"

RSpec.describe CharitySerializer do
  describe "#call" do
    let(:charity) { FactoryGirl.build(:charity, id: 1) }

    it "returns a serialized object as a hash" do
      serialized_charity = subject.call(charity)
      expect(serialized_charity).to eq({
        id: 1,
        name: "A Name",
        description: "A short description",
        phone: "1234-5678",
        location: {
          state: "MG",
          city: "Sete Lagoas",
          street: "Cracovia",
          number: "139",
          complement: "1"
        }
      })
    end
  end
end
