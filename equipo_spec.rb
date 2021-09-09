require_relative 'equipo'
require_relative 'participante'

RSpec.describe Equipo do
    context '1 inicializar clase equipo' do
        before(:each) do
            @equipo = Equipo.new '0001', 'Power Rangers'
        end
        it '1.1 nuevo' do
            expect(@equipo).to be_a_instance_of(Equipo)
        end
        it '1.2 nuevo#codigo' do
            expect(@equipo.codigo).to eq('0001')
        end
    end

    context '2 cargar participante' do
        it 'carga' do
            @equipo = Equipo.new '0001', 'Power Rangers'
            participante = Participante.new '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco',1,1,1
            @equipo.cargarParticipante '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco',1,1,1
            expect(@equipo.participantes[0].nombre).to eql('Elfi Deo')
        end
    end

    context '3 puntaje del equipo' do
        it 'carga' do
            @equipo = Equipo.new '0001', 'Power Rangers'
            @equipo.cargarParticipante '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco',1,1,1
            @equipo.cargarParticipante '0002', 'Elsa Pallo', 22, '34564623-1', 'Rojo',1,2,1
            expect(@equipo.puntajeEquipo).to eql(17)
        end
    end
end