require 'user_numbers'

RSpec.describe 'numbers' do
    context 'testing read method' do
        it 'input 1 number' do
            one = Numbers.new
            one.add('Mum: 000999999')
            expect(one.read).to eq ['Mum: 000999999']
        end
        it 'input multiple numbers' do
            one = Numbers.new
            one.add('Mum: 000999999')
            one.add('Dad: 000999999')
            expect(one.read).to eq ['Mum: 000999999', 'Dad: 000999999']
        end
    end
end