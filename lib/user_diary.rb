class Diary
  def initialize
    @array = []
    @number = []
    @todo = []
  end

  def add(entry)
    @array.push(entry)
  end
  
  def read
    return @array
  end
  
  def add_todo(todo)
    @todo << todo.read
    @array << [@todo.join(' ')]
  end

  def add_number(number)
    @number << number.read.join(' ')

  end

  def read_entry(index)
    return @array[index], @number
  end

  def best_entry(wpm, min)
    max_words = wpm*min
    total = 0 
    best = @array.select { |x| x.split.length <= max_words }
    sorted = best.sort_by {|entry| entry.split.length }
    combined_length = sorted.join(' ').split.length
    if combined_length <= max_words
        return sorted
    else
        return sorted.last
    end
  end

end