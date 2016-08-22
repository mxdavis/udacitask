class TodoList
    def initialize(list_title)
    	@title = list_title
    	@items = []
    	@completed_items = []
    	@deleted_items = []
    end

  attr_accessor :title, :items

  def add_item(new_item)
  	item = Item.new(new_item)
  	@items.push(new_item)
  end

  def delete_item(index)
	@deleted_items << @items.delete_at(index)
  end

  def check_if_item_deleted_and_restore(item_description)
    trueorfalse = @deleted_items.include? item_description
      if trueorfalse == true  
      	@items << item_description
      	@deleted_items.delete(item_description)
      else 
        puts "Sorry! This Item is not in the trash."
    end
  end

  def item_completed(index)
  	items.item_completed(index)
  	@completed_items << @items.delete_at(index)
  end
  
  def print_todo_list
    puts @title
  	puts '-' * 44
  	puts @items
  	puts '-' * 44
  	puts "Completed Items"
  	puts '-' * 44
  	puts @completed_items
  end

  def show_trash
  	puts "Trash"
  	puts '-' * 44
  	puts @deleted_items
  end

  def change_title_of_existing_list(new_name)
  	@title = new_name
  end

end

class Item
    def initialize(item_description)
    	@description = item_description
    	@completed_status = false
    end

    def item_completed
    	@completed_status = true
    end
end
