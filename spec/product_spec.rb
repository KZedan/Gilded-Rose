require 'product'

describe Product do
  let(:product) { Product.new("Salmon", 4, 4) }
  let(:product2) { Product.new("Giraffe", 4, 4) }
  let(:gildedrose) { Inn.new}
  let(:items) {gildedrose.items}

  it 'product has a name when created' do
    expect(product.name).to eq("Salmon")
  end

  it "product has a sell in date" do
    expect(product.sell_in).to eq(4)
  end

  it "has a quality" do
    expect(product.quality).to eq(4)
  end

  context 'quality' do
    before :each do
      gildedrose.add_item(product)
      gildedrose.add_item(product2)
      gildedrose.update_quality
    end

    it 'decreases the quality by 1' do
      expect(items[0].quality).to eq 3
    end
  end

end