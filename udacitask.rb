require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("To do List")
list.print_list_header

# Add four new items
list.add_item("Pay bills")
list.add_item("Pick up groceries")
list.add_item("Get gas")
list.add_item("Do homework")

# Print the list
list.print_list

# Delete the first item
list.remove_item(0)

# Print the list
list.print_list

# Delete the second item
list.remove_item(1)

# Print the list
list.print_list

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list

# Print the list
