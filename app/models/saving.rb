# == Schema Information
#
# Table name: savings
#
#  id         :integer          not null, primary key
#  date       :date
#  begin      :time
#  end        :time
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Saving < ActiveRecord::Base
	belongs_to :player
	has_many :attendances
	has_many :savingfields
	has_many :fields , through: :savingfields
def to_s
   #put your own code here
   date
end
class << self
    def toShow
      ary = Array.new
      players = Saving.all.ids
      players.each do |i|
        id = i
        names = Saving.find(i).date
        arrai = Array.new
        arrai = [names,id]
        ary.append(arrai)
      end
      ary
    end

    def obtenerAsistencias
      ary = Array.new
      asistencias = Saving.all.order(date: :asc)
      asistencias.each do |a|
        ary << a.date.strftime("%d:%m")
      end
      ary
    end
end
end 
