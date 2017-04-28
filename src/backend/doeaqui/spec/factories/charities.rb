FactoryGirl.define do
  factory :charity do
    name "A Name"
    description "A short description"
    phone "1234-5678"
    association :location
  end
end
