# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  nickName   :string
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
	belongs_to :team
	has_many :attendances
	has_many :savings
def to_s
   #put your own code here
   name
end

def calcularPromedio(montoideal,asistenciaideal,mimonto,miasistencia)
  if asistenciaideal == 0
    return 0
  end
  promedioMonto = (mimonto/montoideal)*100
  promedioAsistencia = (miasistencia/asistenciaideal)*100
  promedioTotal = (promedioMonto+promedioAsistencia)/2
  promedioTotal
end

def obtenerEstadisticasAsistencia
  arraysingo = Array.new
  asistencias = Saving.all.order(date: :asc)
  asistencias.each do |a|
    asis = calcularAsistencia(a.id,asistencias)
    arraysingo << asis
  end
  arraysingo
end

def calcularAsistencia(idSaving,asistencias)
  asistenciasHastalafecha=0
  asistenciaPersonal=0
  asistencias.each do |a|
    asistencia = self.attendances.find_by(saving_id: a.id)
    asistenciasHastalafecha = asistenciasHastalafecha + 1
    if !asistencia.nil? and asistencia.gone==true
      asistenciaPersonal= asistenciaPersonal + 1
    end
    if idSaving == a.id
      break
    end
  end
  resultado = (asistenciaPersonal.fdiv(asistenciasHastalafecha))*100
end

class << self
    def toShow
      ary = Array.new
      players = Player.all.ids
      players.each do |i|
        id = i
        names = Player.find(i).name
        arrai = Array.new
        arrai = [names,id]
        ary.append(arrai)
      end
      ary
    end

end

end 
