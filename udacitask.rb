require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("John's To Do's")
list.print_header

# Add four new items
list.add_item("Pay bills", "High importance!")
list.add_item("Pick up groceries", "Low importance")
list.add_item("Yard work", "Low importance")
list.add_item("Finish homework", "High importance!")

# Print the list
list.print_list

# Delete the first item
list.remove_item(0)

# Print the list
list.print_list

# Delete the second item
list.remove_item(0)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.change_completion(0)

# Print the list
list.print_list

# Update the title of the list
list.new_title("John's updated list")

# Print the list
list.print_list