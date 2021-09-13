require_relative 'equipo'
require_relative 'participante'
require_relative 'torneo'

RSpec.describe Torneo do
    context '1 inicializar clase torneo' do
        before(:each) do
            @torneo = Torneo.new 
        end
        it '1.1 nuevo' do
            expect(@torneo).to be_an_instance_of(Torneo)
        end
    end

    context '2 cargar equipo' do
        it 'carga' do
            torneo = Torneo.new
            torneo.cargarEquipo '0001', 'Power Rangers'
            expect(torneo.equipos[0].nombre).to eql('Power Rangers')
        end
    end

    context '3 encontrar al equipo ganador' do
        it 'carga' do
            torneo = Torneo.new
            torneo.cargarEquipo '0001', 'Power Rangers'
            expect(torneo.equipos[0].nombre).to eql('Power Rangers')
        end
    end

end