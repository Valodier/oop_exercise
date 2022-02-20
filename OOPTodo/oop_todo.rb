require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 3))
list.add_task(Task.new("Take out trash", 1))
list.add_task(Task.new("Mow the lawn", 2))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!
list.tasks[1].complete!
list.tasks[2].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names


# Reverse true, false values of @tasks
list.tasks[0].toggle_complete!
list.tasks[1].toggle_complete!
list.tasks[2].toggle_complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names

#Prints out number of incomplete task
puts "Number of incomplete tasks"
puts list.number_of_incomplete_tasks

#task priority check
puts "Priority Check"
puts list.tasks[0].priority
puts list.tasks[1].priority
puts list.tasks[2].priority


#Tasks in order of priority
puts list.sort_by_priority



#set tasks to complete for .delete_complete_task
list.tasks[0].complete!
list.tasks[1].complete!
list.tasks[2].complete!

#delete complete tasks
list.delete_complete_task
p list.tasks

