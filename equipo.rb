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

    def cargarParticipante codigo, nombre, edad, dni, cinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas
        participante = Participante.new codigo, nombre, edad, dni, cinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas
        @participantes.push(participante)
        @participantes
    end

    def puntajeEquipo
        sum = 0
        for participante in @participantes
            sum += participante.puntaje
        end
        sum
    end
end