require 'user_todo'

RSpec.describe 'Todo' do
    context 'testing read method' do
        it 'input 1 task' do
            todo = Todo.new
            todo.add('iron')
            expect(todo.read).to eq ['iron']
        end
        it 'input 2 tasks' do
            todo = Todo.new
            todo.add('iron')
            todo.add('wash')
            expect(todo.read).to eq ['iron', 'wash']
        end
    end
end

