require_relative 'equipo'
require_relative 'participante'
require_relative 'torneo'

e1 = Equipo.new '0001', 'Cocaina'
e2 = Equipo.new '0002', 'Pasta base'
e3 = Equipo.new '0003', 'Neopren'
e4 = Equipo.new '0004', 'Anfetamina'
e5 = Equipo.new '0005', 'Heroina'
e6 = Equipo.new '0006', 'LSD'

e1.cargarParticipante '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco',1,1,2
e2.cargarParticipante '0002', 'Elsa Pallo', 30, '1723649-3', 'Negro',3,0,1
e3.cargarParticipante '0003', 'Alan Brito', 28, '235346-2', 'Rojo',0,4,0
e4.cargarParticipante '0004', 'Aquiles Baeza', 19, '8765439-1', 'Blanco',2,0,2
e5.cargarParticipante '0005', 'Marcia Ana', 20, '9042729-1', 'Amarillo',2,1,1
e6.cargarParticipante '0006', 'Pato Mar', 25, '32542345-1', 'Negro',1,1,2

puts e1