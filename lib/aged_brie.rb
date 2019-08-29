require_relative 'item'

class AgedBrie < Item
  def update_quality
    increase_quality
  end
end