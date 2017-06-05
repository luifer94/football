# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
	has_many :players
def to_s
   #put your own code here
   name
end
class << self
    def toShow
      ary = Array.new
      players = Team.all.ids
      players.each do |i|
        id = i
        names = Team.find(i).name
        arrai = Array.new
        arrai = [names,id]
        ary.append(arrai)
      end
      ary
    end
end
end 
