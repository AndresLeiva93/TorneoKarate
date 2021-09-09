require_relative 'equipo'

RSpec.describe Equipo do
    context '1 inicializar clase equipo' do
        before(:each) do
            @equipo = Equipo.new '0001', 'Power Rangers', 80, 10
        end
        it '1.1 nuevo' do
            expect(@equipo).to be_a_instance_of(Equipo)
        end
        it '1.2 nuevo#codigo' do
            expect(@equipo.codigo).to eq('0001')
        end
    end
end