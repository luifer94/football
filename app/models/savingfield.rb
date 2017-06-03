class Savingfield < ActiveRecord::Base
	belongs_to :saving
	belongs_to :field
def to_s
   #put your own code here
end
end 
