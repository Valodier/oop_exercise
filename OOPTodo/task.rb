class Task
  
  def initialize(name,number)
    @name = name
    @complete = false
    @priority = number
  end

  def priority
    @priority
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
    puts "#{@name} completed!"
  end

  def toggle_complete!
    if @complete = true
      @complete = false
    elsif @complete = false
      @complete = true
    end
    puts "Tasks Toggled"
  end
end