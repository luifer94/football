FactoryGirl.define do
  factory :attendance do
    gone Faker::Boolean.boolean
    fieldPrice Faker::Number.between(1, 20)
    fee Faker::Number.between(1, 30)
  end
end
