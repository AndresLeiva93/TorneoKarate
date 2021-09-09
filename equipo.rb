require_relative 'equipo'
require_relative 'participante'

class Equipo
    attr_accessor :codigo, :nombre, :puntaje, :participantes
    def initialize codigo, nombre
        @codigo = codigo
        @nombre = nombre
        @puntaje = 0
        @participantes = Array.new
    end

    def cargarParticipante codigo, nombre, edad, dni, cinturon
        participante = Participante.new codigo, nombre, edad, dni, cinturon
        @participantes.push(participante)
        @participantes
    end
end