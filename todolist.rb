class TodoList
    def initialize(list_title)
      @title = list_title
      @items = []
      @completed_items = []
      @deleted_items = []
      @important_items = []
    end

  attr_accessor :title, :items

  def add_item(new_item)
    item = Item.new(new_item)
    @items << item
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
  	@items[index-1].item_important
    @important_items << @items.delete_at(index-1)
  end

  def item_completed(index)
    @items[index-1].item_completed
    @completed_items << @items.delete_at(index-1)
  end
  
  def print_todo_list
    puts @title
    puts '-' * 44
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
  	@completed_items.each do |item|
	    description = item.description
      if description == item_name
        return true
      else
        return false
      end
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

  def change_title_of_existing_list(new_name)
    @title = new_name
  end
end

class Item

  def initialize(item_description)
    @description = item_description
    @completed_status = false
    @important = false
  end

  attr_accessor :description, :completed_status

  def item_completed
    @completed_status = true
  end

   def item_important
    @important = true
  end

  def print_item
  	puts "#{@description} is Important = #{@important}, Completed = #{@completed_status}"
  end
end