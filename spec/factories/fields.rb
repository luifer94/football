FactoryGirl.define do
  factory :field do
    name Faker::Cat.name
    price Faker::Number.between(150, 250)
    size Faker::Number.between(1, 10)
  end
end
