class Todo

  def initialize
    @array = []
  end

  def add(task)
    @array << task
  end

  def read
    @array
  end

end