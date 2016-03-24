class TodoList
    
  attr_accessor :title, :items
    
  def initialize(list_title)
    @title = list_title
    @items = []
  end
  
  # Change name of title
  def new_title_name(new_title_name)
    @title = new_title_name
  end
  
  # Add new item to list
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item) # Alternative: @items << item
  end
  
  # Remove item from list
  def remove_item(item_index)
    @items.delete_at(item_index)
  end
  
  def count_list_items
    @items.length
  end
  
  # Print today's date
  def current_date
    puts "  Created on " + Time.now.strftime("%m/%d/%Y at %I:%M%p").to_s
  end
  
  # Print readability divider
  def report_heavy_divider
    puts ("  " + ("=" * 41))
  end
  
  # Print light readability divider
  def report_light_divider
    puts ("  " + ("-" * 41))
  end
  
  # Print created by
  def created_by
    puts "  Created by: John Zukowski"
  end
  
  # Print "To do List" in ascii art
  def todolist_ascii
    puts "
   _______          _         _      _     _   
  |__   __|        | |       | |    (_)   | |  
     | | ___     __| | ___   | |     _ ___| |_ 
     | |/ _ \   / _` |/ _ \  | |    | / __| __|
     | | (_) | | (_| | (_) | | |____| \__ \ |_ 
     |_|\___/   \__,_|\___/  |______|_|___/\__|
   
    "                                            
  end
  
  # List header
  def print_list_header
    report_heavy_divider
    current_date
    created_by
    report_heavy_divider
    todolist_ascii
  end
  
  # Print list
  def print_list
    report_light_divider
    puts "  Total items listed: #{count_list_items}"
    report_light_divider
  end
end


class Item
    
  attr_accessor :description, :completed_status

  # Initialize item with a description and marked as not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end
  
  # Item marked as complete
  def completed(item)
    item.completed_status = true
  end

end