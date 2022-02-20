class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def number_of_incomplete_tasks
    @task_names.length
  end

  def sort_by_priority
    @sorted_by_priority = []
    sort = @tasks.sort_by {|list| list.priority}.reverse
    sort.each do |task|
      @sorted_by_priority << task.name
    end
    puts "Sorted by Priority:"
    return @sorted_by_priority
  end
  
  def incomplete_task_names
    @task_names = []
    @tasks.each do |task|
      unless task.complete
        @task_names << task.name
      end
    end
    return @task_names
  end

  def delete_complete_task
    @tasks.delete_if {|task| @complete = true}
    puts "Completed Tasks Deleted"
  end

end