# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  gone       :boolean
#  fieldPrice :float
#  fee        :float
#  player_id  :integer
#  saving_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attendance < ActiveRecord::Base
	belongs_to :player
	belongs_to :saving
	validates_presence_of :gone,:fieldPrice,:fee
	validates :fieldPrice, numericality: { greater_than: 0 }
	validates :fee, numericality: { greater_than: 0 }
	def to_s
		#put your own code here
	end
end 
