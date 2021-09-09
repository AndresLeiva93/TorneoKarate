require_relative 'equipo'
require_relative 'participante'
require_relative 'torneo'

RSpec.describe Torneo do
    context '1 inicializar clase torneo' do
        before(:each) do
            @torneo = Torneo.new 
        end
        it '1.1 nuevo' do
            expect(@torneo).to be_a_instance_of(Torneo)
        end
    end
end