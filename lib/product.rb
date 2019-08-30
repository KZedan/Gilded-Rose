require 'item'

class Product < Item
  def update_quality
    decrease_sell_in
    sell_in < 0 ? @quality -= 2 : @quality -= 1
  end
end