class Field < ActiveRecord::Base
	belongs_to :establishment
	has_many :savingfields
	has_many :savings , through: :savingfields
def to_s
   #put your own code here
end
end 
