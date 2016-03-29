class TodoList
  # GETTERS for title and items
  attr_reader :title, :items
    
  # Constructor method
  def initialize(title)
    @title = title.upcase
    @items = []
  end
  
  # Rename list
  def new_title(new_title)
    @title = new_title.upcase
  end
  
  # Add new item and rank to list
  def add_item(item, rank="High importance!")
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
  def weekday
    current_time = Time.new
    current_time.strftime("%A, %m/%d/%Y")
  end
  
  # Print readability divider
  def divider
    puts ("  " + ("=" * 42))
  end
  
  # Print created by
  def author
    first_name = "john"
    last_name = "zukowski"
    author = "  Author: #{first_name.capitalize} #{last_name.capitalize}"
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
    ascii_art
  end
  
  # List title
  def print_title
    divider
    puts "#{@title}".center(42)
    puts "#{weekday}".center(42)
    puts "#{author}".center(42)
    puts "Total items shown (#{count_items})".center(42)
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

  # Returns boolean using ternary operator
  def completed?
    return @completed_status ? "Yes" : "No"
  end
  
   # Toggle completion
  def toggle_completion
    @completed_status = !@completed_status
  end
  
  def print_item
    puts "  Description:  #{@description}"
    puts "  Rank:         #{@rank}"
    puts "  Completed:    #{@completed_status}"
    puts ""
  end
end