# == Schema Information
#
# Table name: establishments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Establishment < ActiveRecord::Base
	has_many :fields
def to_s
   name
end

class << self
    def toShow
      ary = Array.new
      players = Establishment.all.ids
      players.each do |i|
        id = i
        names = Establishment.find(i).name
        arrai = Array.new
        arrai = [names,id]
        ary.append(arrai)
      end
      ary
    end
end
end 
