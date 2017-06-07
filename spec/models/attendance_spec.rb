require 'rails_helper'

RSpec.describe Attendance, type: :model do
  it{ should validate_presence_of :gone }
  it{ should validate_presence_of :fieldPrice } 
  it{ should validate_presence_of :fee }

  it "should validate fieldprice > 0" do
  	attendance = FactoryGirl.build(:attendance)
  	expect(attendance.valid?).to be_falsy
  	##be_truthy
  end

end
