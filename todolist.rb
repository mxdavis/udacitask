class TodoList
    def initialize(list_title)
    	@title = list_title
    	@items = []
    	@completed_items = []
    	@deleted_items = []
<<<<<<< HEAD
      @important_items = []
=======
    	@important_items = []
>>>>>>> 13a29d3e518f95f42110c43c8fce38c71cece7b0
    end

  attr_accessor :title, :items

  def add_item(new_item)
  	item = Item.new(new_item)
  	@items.push(item)
  end

  def delete_item(index)
	@deleted_items << @items.delete_at(index-1)
  end

  def restore_from_trash(index)
    @items << @deleted_items.delete_at(index-1)
  end

  def item_not_completed(index)
    @items << @completed_items.delete_at(index-1)
  end


  def mark_important(index)
    @important_items << @items.delete_at(index-1)
  end

<<<<<<< HEAD
  def item_completed(index)
  	@items[index-1].item_completed
  	@completed_items << @items.delete_at(index-1)
=======
  def item_completed_and_moved(index)
  	@completed_items << @items.delete_at(index)
>>>>>>> 13a29d3e518f95f42110c43c8fce38c71cece7b0
  end

  def item_not_completed_and_moved_back(index)
  	@items << @completed_items.delete_at(index)
  end
  
  def print_todo_list
    puts @title
  	puts '-' * 44
<<<<<<< HEAD
    print_important_items
    print_uncompleted_items
  end

  def print_uncompleted_items
    @items.each do |item|
      print "- O - "
      print item.description
      print "\n"
    end
  end

  def print_completed_items
    puts "Completed Items"
    puts '-' * 44
    @completed_items.each do |item|
      print "- O - "
      print item.description
      print "\n"
    end
  end

  def item_completed?(item_name)
    items_completed = @completed_items.map {|item| item.description}
    if item_name == items_completed 
        return "true"
    else
        return "false"
    end
  end

  def print_important_items
    @important_items.each do |item|
      print "! O ! "
      print item.description
      print "\n"
    end
  end

  def show_important_items
    puts "!Important!"
    puts '-' * 44
    print_important_items
=======
  	puts @important_items
  	puts @items
  	puts '-' * 44
  end

  def show_completed_items
  	puts "Completed Items"
  	puts '-' * 44
  	puts @completed_items
>>>>>>> 13a29d3e518f95f42110c43c8fce38c71cece7b0
  end

  def is_item_completed?(description)
  	puts description
  	if @completed_items.include? description
  		puts "#{description} has been completed"
  	elsif
  		@items.include? description
  		puts "#{description} has not been completed"
  	else
  		puts "This item does not exist"
  	end
  end

  def show_trash
  	puts "Trash"
  	puts '-' * 44
  	 @deleted_items.each do |item|
      print "- O - "
      print item.description
      print "\n"
    end
  end

  def show_important_items
  	puts "Important Items"
  	puts '-' * 44
  	puts @important_items
  end

  def change_title_of_existing_list(new_name)
  	@title = new_name
  end

  def mark_important(index)
  	@important_items << @items.delete_at(index)
  end
end

class Item
<<<<<<< HEAD

  attr_accessor :description, :completed_status
=======
	attr_accessor :description
>>>>>>> 13a29d3e518f95f42110c43c8fce38c71cece7b0

    def initialize(item_description)
    	@description = item_description
    end

end
