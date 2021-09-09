require_relative 'equipo'

class Participante 
    attr_accessor :codigo, :nombre, :edad, :dni, :cinturon, :partidasGanadas, :partidasEmpatadas, :partidasPerdidas 
    def initialize codigo, nombre, edad, dni, cinturon
        @codigo = codigo
        @nombre = nombre
        @edad = edad
        @dni = dni
        @cinturon = cinturon
        @partidasGanadas = 0
        @partidasEmpatadas = 0
        @partidasPerdidas = 0
    end
end