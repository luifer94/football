FactoryGirl.define do
  factory :player do
    name Faker::Name.name
    nickName Faker::LordOfTheRings.character
  end
end
