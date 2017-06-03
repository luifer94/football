class Attendance < ActiveRecord::Base
	belongs_to :player
	belongs_to :saving
def to_s
   #put your own code here
end
end 
