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

    context '2 cargar participante'
        it 'carga' do
            @equipo = Equipo.new '0001', 'Power Rangers'
            participante = Participante.new '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco'
            @equipo.cargarParticipante '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco'
            expect(@equipo.participantes[0].nombre).to eql('Elfi Deo')
    end

end