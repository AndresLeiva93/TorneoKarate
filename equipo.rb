class Equipo
    attr_accessor :codigo, :nombre, :puntaje, :participantes
    def initialize codigo, nombre, puntaje, participantes
        @codigo = codigo
        @nombre = nombre
        @puntaje = puntaje
        @participantes = participantes
    end
end