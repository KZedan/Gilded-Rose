require_relative 'item'

class Conjured < Item
  def update_quality
    decrease_quality - 1
  end
end