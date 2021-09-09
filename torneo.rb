require_relative 'equipo'
require_relative 'participante'

class Torneo
    attr_accessor :equipos
    def initialize 
        @equipos = Array.new
    end
    
    def cargarEquipo codigo, nombre
        equipo = Equipo.new codigo, nombre
        @equipos.push(equipo)
        @equipos
    end
end
