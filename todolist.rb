class TodoList
  # GETTERS for title and items
  attr_reader :title, :items
    
  # Constructor method
  def initialize(title)
    @title = title
    @items = []
  end
  
  # To String method
  def to_s
    return "TodoList title: #{@title}"
    return "TodoList items: #{@items}"
  end
  
  # Rename list
  def new_title(new_title)
    @title = new_title
  end
  
  # Add new item and rank to list
  def add_item(item, rank="High")
    new_item = Item.new(item, rank)
    @items << new_item
  end
  
  # Remove item from list
  def remove_item(index)
    @items.delete_at(index)
  end
  
  # Change completion
  def change_completion(index)
    @items.at(index).toggle_completion
  end
  
  # Count items
  def count_items
    @items.length
  end
  
  # Print today's date
  def current_date
    current_date = "  Created on " + Time.now.strftime("%m/%d/%Y at %I:%M%p").to_s
    puts current_date.center(42)
  end
  
  # Print readability divider
  def divider
    puts ("  " + ("=" * 42))
  end
  
  # Print created by
  def author
    author = "  Created by: John Zukowski"
    puts author.center(42)
  end
  
  # Print "To do List" in ascii art
  def ascii_art
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
  def print_header
    divider
    current_date
    author
    divider
    ascii_art
  end
  
  # List title
  def print_title
    divider
    puts "#{@title.center(42)}"
    puts "Total items listed (#{count_items})".center(42)
    divider
    puts ""
  end
  
  # Print list
  def print_list
    print_title
    list_items
  end
  
  # List items
  def list_items
    @items.each do |item|
      item.print_item
    end
  end
end


class Item
    
  attr_reader :description, :completed_status, :rank

  # Initialize item
  def initialize(description, rank)
    @description = description
    @completed_status = false
    @rank = rank
  end
  
   # Toggle completion
  def toggle_completion
    @completed_status = !@completed_status
  end
  
  def print_item
    puts "  Item: #{@description}"
    puts "  Rank: #{@rank}"
    puts "  Completed: #{@completed_status}"
    puts ""
  end
  
  def index_num
    result = []
    @description.each_with_index {|item, index| result << [item, index]}
    result
  end
end