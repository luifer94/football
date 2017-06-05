# == Schema Information
#
# Table name: savingfields
#
#  id         :integer          not null, primary key
#  saving_id  :integer
#  field_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Savingfield < ActiveRecord::Base
	belongs_to :saving
	belongs_to :field
def to_s
   #put your own code here
   id
end
end 
