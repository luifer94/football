FactoryGirl.define do
  factory :saving do
	date Faker::Time.between(DateTime.now, DateTime.now + 20)
  end
end
