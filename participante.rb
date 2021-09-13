require_relative 'equipo'

class Participante 
    attr_accessor :codigo, :nombre, :edad, :dni, :cinturon, :partidasGanadas, :partidasEmpatadas, :partidasPerdidas, :puntaje 
    def initialize codigo, nombre, edad, dni, cinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas
        @codigo = codigo
        @nombre = nombre
        @edad = edad
        @dni = dni
        @cinturon = cinturon
        @partidasGanadas = partidasGanadas
        @partidasEmpatadas = partidasEmpatadas
        @partidasPerdidas = partidasPerdidas
        @puntaje = (partidasGanadas * 4) + (partidasEmpatadas * 3)
    end
end