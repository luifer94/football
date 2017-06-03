class Player < ActiveRecord::Base
	belongs_to :team
	has_many :attendances
	has_many :savings
def to_s
   #put your own code here
end
end 
