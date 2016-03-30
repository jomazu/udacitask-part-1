require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("current list", "john zukowski")
list.print_header

# Add four new items
list.add_item("Pay bills")
list.add_item("Pick up groceries")
list.add_item("Yard work")
list.add_item("Finish homework")

# Print the list
list.print_list

# Delete the first item
list.remove_item(1)

# Print the list
list.print_list

# Delete the second item
list.remove_item(2)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.change_completion(1)

# Print the list
list.print_list

# Update the title of the list
list.new_title("updated list")

# Print the list
list.print_list