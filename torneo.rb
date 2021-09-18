require_relative 'equipo'
require_relative 'participante'

class Torneo
    attr_accessor :equipos
    def initialize 
        @equipos = Array.new
        @participantes = Array.new
    end
    
    #revisar
    def obtener_equipo(codigo)
        for equipo in @equipos
            if equipo.codigo == codigo
                return equipo
            end
        end
        return nil
    end

    def registrar_equipo(codigo, nombre)
        equipo = obtener_equipo(codigo)
        if equipo == nil
            equipo = Equipo.new(codigo, nombre)
            @equipos.push(equipo)
        end
    end

    def registrar_participante(codigo, nombre, edad, dni, cinturon, partidasGanadas,partidasEmpatadas, partidasPerdidas,codEquipo)
        equipo = obtener_equipo(codEquipo)
        if equipo != nil 
            participante = Participante.new(codigo, nombre, edad, dni, cinturon, partidasGanadas,partidasEmpatadas, partidasPerdidas)
            equipo.participantes.push(participante)
            @participantes.push(participante)
        else
            puts "Equipo no encontrado"
        end
    end
    
    def buscarxdni(dni) 
        for participante in @participantes
            if participante.dni == dni
                return puts "Participante: #{participante.dni} - #{participante.nombre} de #{participante.edad} años. Puntaje actual : #{participante.nuevo_puntaje}"
            end
        end
        return nil
    end

    def campeon
        max_puntaje = 0
        campeon = nil
        for participante in @participantes
            if participante.nuevo_puntaje >= max_puntaje
                max_puntaje = participante.nuevo_puntaje
                campeon = participante
            end
        end
        return puts "El campeon es: #{campeon.nombre}"
    end

    def tabla_posiciones
        posiciones = []
        for participante in @participantes
          posiciones.push(participante)
        end
        
        for i in 0...posiciones.count
          for j in i+1...posiciones.count
            participanteA = posiciones[i]
            participanteB = posiciones[j]
            if participanteA.nuevo_puntaje < participanteB.nuevo_puntaje
              temporal = participanteA
              posiciones[i] = participanteB
              posiciones[j] = temporal
            end
          end
        end
        
        for i in 0...posiciones.count
          participante = posiciones[i]
          puts "#{i+1}° lugar:" + participante.nombre
          break if i >= posiciones.count - 1
        end
    end

    def cambiar_puntaje dni, partidasGanadas
        for participante in @participantes
            if participante.dni == dni
                participante
            end
        participante.partidasGanadas = partidasGanadas
        end
    end

    def puntaje_equipos
        for equipo in @equipos
          totalPuntaje = 0
          for participante in equipo.participantes
            totalPuntaje = totalPuntaje + participante.nuevo_puntaje
          end
          puts "#{equipo.nombre} Puntaje total: #{totalPuntaje}"
        end
    end
end
