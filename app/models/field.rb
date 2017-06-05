# == Schema Information
#
# Table name: fields
#
#  id               :integer          not null, primary key
#  name             :string
#  price            :float
#  size             :integer
#  establishment_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Field < ActiveRecord::Base
	belongs_to :establishment
	has_many :savingfields
	has_many :savings , through: :savingfields
def to_s
   #put your own code here
   name
end
end 
