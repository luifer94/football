class Saving < ActiveRecord::Base
	belongs_to :player
	has_many :attendances
	has_many :savingfields
	has_many :fields , through: :savingfields
def to_s
   #put your own code here
end
end 
