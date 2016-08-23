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
newlist.item_completed(0)

# Show Completed Items
newlist.print_completed_items

# Update the completion status of the first item to complete
newlist.item_completed(0)

# Show Completed Items
newlist.print_completed_items

# Update the completion status of the first item to incomplete
newlist.item_not_completed(0)

# Show Completed Items
newlist.print_completed_items

#Check completed item
newlist.item_completed?(0)

# Print the list
newlist.print_todo_list

# Update the title of the list
newlist.change_title_of_existing_list("Personal To Do")

# Print the list
newlist.print_todo_list

# Show Trash
newlist.show_trash

# Check if item deleted and restore
newlist.restore_from_trash(1)

# Print the list
newlist.print_todo_list

# Show Trash
newlist.show_trash

#Mark Important and See it first in the list
newlist.mark_important(1)

# Print the list
newlist.print_todo_list

#See only important
newlist.show_important_items



