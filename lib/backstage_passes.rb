require_relative 'item'

class BackstagePasses < Item
  def update_quality
    decrease_sell_in
    pass_quality
  end

  private
  def pass_quality
    if @sell_in <= 10 && @sell_in > 5
      @quality += 2
    elsif @sell_in <= 5 && @sell_in > 0
      @quality += 3
    elsif @sell_in < 0 
      @quality = 0
    else
      increase_quality
    end
  end
end