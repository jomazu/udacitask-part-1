class TodoList
    
    attr_reader :list
    
    # Empty array to keep track of items in list
    def initialize
      @list = []
    end
end

class Item
    
  attr_accessor :item

 

  def add_item(item)
    @list << item
  end

  def remove_item(item)
    @list.delete(item)
  end

end