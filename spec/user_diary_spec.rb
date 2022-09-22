require 'user_diary'

RSpec.describe 'Diary' do
    context 'testing read method' do
        it 'inputting nothing, expect nothing' do
            diary = Diary.new
            diary.add('')
            expect(diary.read).to eq ['']
        end
        it 'inputting Hello Diary, expect Hello Diary' do
            diary = Diary.new
            diary.add('Hello Diary!')
            expect(diary.read).to eq ['Hello Diary!']
        end
        it 'inputting multiple entries in same instance' do
            monday = Diary.new
            monday.add('Hello Diary!')
            monday.add('Bye Diary')
            expect(monday.read).to eq ['Hello Diary!', 'Bye Diary']
        end
        it 'inputting entries in different instances' do
            monday = Diary.new
            monday.add('Hello Diary!')
            monday.add('Bye Diary')
            tuesday = Diary.new
            tuesday.add('Happy Tuesday')
            expect(tuesday.read).to eq ['Happy Tuesday']
        end
    context 'testing best_entry method'
        it 'testing empty string' do
            diary = Diary.new
            diary.add('')
            expect(diary.best_entry(2, 1)).to eq ['']
        end
        it 'testing 1 entry' do
            diary = Diary.new
            diary.add('Hello')
            expect(diary.best_entry(2, 1)).to eq ['Hello']
        end
        it 'testing 1 long entry and 1 short entry' do
            diary = Diary.new
            diary.add('Hello')
            diary.add('Hi Hello World')
            expect(diary.best_entry(2, 1)).to eq ['Hello']
        end
        it 'testing 2 long entries' do
            diary = Diary.new
            diary.add('Hello Hello Hello')
            diary.add('Hi Hello Hello')
            expect(diary.best_entry(2, 1)).to eq []
        end
        it 'testing 2 good entries, expect longest between the 2' do
            diary = Diary.new
            diary.add('Hello')
            diary.add('Hi Hello')
            expect(diary.best_entry(2, 1)).to eq 'Hi Hello'
        end
        
        it 'testing 2 good entries, with enough time to read all entries' do
            diary = Diary.new
            diary.add('Hello')
            diary.add('Hi Hello')
            expect(diary.best_entry(3, 1)).to eq ['Hello', 'Hi Hello']
        end
        context 'testing read_entry method' do
          it 'indexing first element!!!, expecting Hello and number' do
            diary = Diary.new
            one = Numbers.new
            diary.add('Hello')
            diary.add('Hi Hello')
            one.add('Mum: 000000')
            diary.add_number(one)
            expect(diary.read_entry(0)).to eq ['Hello', ["Mum: 000000"]]
          end
          it 'indexing first element, expecting Hello and 2 numbers' do
            diary = Diary.new
            one = Numbers.new
            diary.add('Hello')
            diary.add('Hi Hello')
            one.add('Mum: 000000')
            one.add('Dad: 111111')
            diary.add_number(one)
            expect(diary.read_entry(0)).to eq ["Hello", ["Mum: 000000 Dad: 111111"]]
          end
        end
        context 'testing ability to see todo when seeing whole diary' do
            it 'calling read method in diary, displays list of entries and todo' do
                diary = Diary.new
                todo = Todo.new
                diary.add('Hello')
                diary.add('Hi Hello')
                todo.add('iron')
                diary.add_todo(todo)
                expect(diary.read).to eq ['Hello', 'Hi Hello', ['iron']]
            end
        end
    
    end

end