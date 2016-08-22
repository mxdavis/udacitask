require_relative 'todolist.rb'

# Creates a new todo list
newlist = TodoList.new("My to do")

# Add four new items
newlist.add_item("set alarm")
newlist.add_item("do website")
newlist.add_item("fix leak")
newlist.add_item("cook dinner")

# Print the list
newlist.print_todo_list

# Delete the first item
newlist.delete_item(0)

# Print the list
newlist.print_todo_list

# Delete the second item
newlist.delete_item(1)

# Print the list
newlist.print_todo_list

# Update the completion status of the first item to complete
newlist.item_completed_and_moved(0)

# Check if item is completed
newlist.is_item_completed?("do website1")

# Print the list
newlist.print_todo_list

# Update the title of the list
newlist.change_title_of_existing_list("Personal To Do")

# Print the list
newlist.print_todo_list

# Check if item deleted and restore
newlist.check_if_item_deleted_and_restore("set alarm")
newlist.check_if_item_deleted_and_restore("item doesn't exist")

# Print the list
newlist.print_todo_list

# Show Trash
newlist.show_trash

# Mark second item important
newlist.mark_important(1)

# Print the list
newlist.print_todo_list

# Show only important items
newlist.show_important_items

# Show completed items
newlist.show_completed_items

# Mark item not completed
newlist.item_not_completed_and_moved_back(0)

# Show completed items
newlist.show_completed_items



