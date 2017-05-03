require 'rails_helper'

RSpec.describe Location, type: :model do
  it "is not valid without a state" do
    location = Location.new(
      state: nil,
      city: "BH",
      district: "Pampulha",
      street: "My street",
      number: 1,
    )
    expect(location).to_not be_valid
  end

  it "is not valid without a city" do
    location = Location.new(
      state: "MG",
      city: nil,
      district: "Pampulha",
      street: "My street",
      number: 1,
    )
    expect(location).to_not be_valid
  end

  it "is not valid without a district" do
    location = Location.new(
      state: "MG",
      city: "BH",
      district: nil,
      street: "My street",
      number: 1,
    )
    expect(location).to_not be_valid
  end

  it "is not valid without a street" do
    location = Location.new(
      state: "MG",
      city: "BH",
      district: "Pampulha",
      street: nil,
      number: 1,
    )
    expect(location).to_not be_valid
  end

  it "is valid with valid attributes" do
    location = Location.new(
      state: "MG",
      city: "BH",
      district: "Pampulha",
      street: "My street",
      number: 1,
    )
    expect(location).to be_valid
  end
end
