FactoryGirl.define do
  factory :charity do
    name "The Foundation"
    description "A short description"
    association :location
  end
end
