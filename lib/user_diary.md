1. Describe the Problem

Make a diary

Read past diary entries, how can we reference past diary entries, date?

Select diary entries to read based on reading speed

Make a todo list along with diary. Different class for todo list? How would the 2 classes interact?

Todo list class, which methods would be in it?

See phone numbers in diary entries. This can be done in diary class


2. Design the Class System

class Diary

def initialise(entry, todo)
  @entry = entry
  #add diary entry in intialise?
  #how will diary entries be stored? Array? Hash?
  #the name of the instance could be the day 
  #hash would help with reading past entries by adding date as key but start with array

end

def read
  return @entry
end

def best_entry(wpm, min)
  max_words = wpm*min
  if @entry.split.length <= max_words
    return @entry
  end 
end

def contacts # this may need to be a separate class so it can be available to all instances
  #any contacts we add would be displayed for all entries
end


class TodoList
  def intialise(todo)
  end

  def add
  end

  def read
    #call this method in the diary class
  end
end




3. Create Examples as Integration Tests


4. Create Examples as Unit Tests



5. Implement the Behaviour

