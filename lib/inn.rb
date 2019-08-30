class Inn
  attr_reader :items
  
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
  
  def update_quality
    @items.each do |item|
      p item
    end
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end