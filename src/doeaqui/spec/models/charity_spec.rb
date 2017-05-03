require 'rails_helper'

RSpec.describe Charity, type: :model do
  let(:location) { FactoryGirl.build(:location) }

  it "is not valid without a name" do
    charity = Charity.new(name: nil, location: location)
    expect(charity).to_not be_valid
  end

  it "is not valid without a location" do
    charity = Charity.new(name: "Foundation", location: nil)
    expect(charity).to_not be_valid
  end

  it "is valid with valid attributes" do
    charity = Charity.new(name: "Foundation", location: location)
    expect(charity).to be_valid
  end
end
