class Inn
  attr_reader :items

  def initialize
  p  @items = []
  end

  def add_item(item)
    @items.push(item)
  end
  
  def update_quality
    @items.each do |item|
      item.update_quality
    end
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end