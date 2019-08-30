require_relative 'item'

class Conjured < Item
  def update_quality
    decrease_quality
    check_quality
    decrease_sell_in
  end

  private
  def decrease_quality
    @sell_in < 0 ? @quality -= 4 : @quality -= 2
  end

  def check_quality
    @quality = 0 if @quality < 0
  end
end