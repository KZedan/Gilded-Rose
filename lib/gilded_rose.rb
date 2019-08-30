require_relative 'item'

class GildedRose

    def initialize(items)
      @items = []
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