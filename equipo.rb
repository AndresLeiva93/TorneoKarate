require_relative 'equipo'
require_relative 'participante'

class Equipo
    attr_accessor :codigo, :nombre,  :participantes
    def initialize codigo, nombre
        @codigo = codigo
        @nombre = nombre
        @participantes = Array.new
    end

    # def puntajeEquipo
    #     sum = 0
    #     for participante in @participantes
    #         sum += participante.puntaje
    #     end
    #     sum
    # end
end