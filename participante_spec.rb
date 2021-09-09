require_relative 'participante'

RSpec.describe Participante do
    context '1 inicializar clase participante' do
        before(:each) do
            @participante = Participante.new '0001', 'Elfi Deo', 18, '1898322-1', 'Blanco'
        end
        it '1.1 nuevo' do
            expect(@participante).to be_a_instance_of(Participante)
        end
        it '1.2 nuevo#codigo' do
            expect(@participante.codigo).to eq('0001')
        end
    end
end