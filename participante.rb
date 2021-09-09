require_relative 'equipo'

class Participante 
    attr_accessor :codigo, :nombre, :edad, :dni, :cinturon
    def initialize codigo, nombre, edad, dni, cinturon
        @codigo = codigo
        @nombre = nombre
        @edad = edad
        @dni = dni
        @cinturon = cinturon
    end
end