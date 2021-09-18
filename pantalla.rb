require_relative 'equipo'
require_relative 'participante'
require_relative 'torneo'

torneo = Torneo.new

torneo.registrar_equipo '0001', 'Cocaina'
torneo.registrar_equipo '0002', 'Pasta base'
torneo.registrar_equipo '0003', 'Neopren'
torneo.registrar_equipo '0004', 'Anfetamina'
torneo.registrar_equipo '0005', 'Heroina'
torneo.registrar_equipo '0006', 'LSD'

torneo.registrar_participante '00001', 'Elfi Deo', 18, '1898322-1', 'Blanco',1,1,2,'0001'
torneo.registrar_participante '00011', 'Yalma', 55, '1834534-1', 'Blanco',1,2,1,'0001'
torneo.registrar_participante '00002', 'Elsa Pallo', 30, '1723649-3', 'Negro',2,1,1,'0002'
torneo.registrar_participante '00003', 'Alan Brito', 28, '235346-2', 'Rojo',0,4,0,'0003'
torneo.registrar_participante '00004', 'Aquiles Baeza', 19, '8765439-1', 'Blanco',2,0,2,'0004'
torneo.registrar_participante '00005', 'Marcia Ana', 20, '9042729-1', 'Amarillo',2,1,1,'0005'
torneo.registrar_participante '00006', 'Pato Mar', 25, '32542345-1', 'Negro',1,1,2,'0006'

#puts torneo.equipos[0].participantes[1].nombre
puts '-------- Buscar por dni ---------------'
puts torneo.buscarxdni '1834534-1'

puts '-------- Buscar al campeón ---------------'
puts torneo.campeon

puts '-------- Ordenar por puntaje ---------------'
puts torneo.tabla_posiciones

puts '-------- cambiar puntaje ---------------'
puts torneo.buscarxdni '1834534-1'
torneo.cambiar_puntaje '1834534-1', 3
puts torneo.buscarxdni '1834534-1'

puts '-------- puntaje por equipo ---------------'
puts torneo.puntaje_equipos

