class TodoList
    def initialize(list_title)
    	@title = list_title
    	@items = []
    end

  attr_accessor :title, :items

  def add_item(new_item)
  	item = Item.new(new_item)
  	@items.push(new_item)
  end
  
  def print_todo_list
  	puts @title
  	puts '-' * 44
  	puts @items
  end
end

class Item
    def initialize(item_description)
    	@description = item_description
    	@completed_status = false
    end
end
