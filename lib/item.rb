class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
    errors
  end

  private

  def errors
    raise "Maximum quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end

  def decrease_sell_in
    @sell_in -= 1
  end

  def increase_quality
    @quality > 50 ? errors : @quality += 1
  end
end