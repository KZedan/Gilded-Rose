require 'backstage_passes.rb'
require 'inn'

describe Inn do
  let(:gildedrose) {Inn.new}
  let(:backstagepass1) {BackstagePasses.new("Gunsandroses", 7, 5)}
  let(:backstagepass2) {BackstagePasses.new("Metallica", 3, 15)}
  let(:items) {gildedrose.items}
    
  it "Can be created with name" do
    expect(backstagepass1.name).to eq("Gunsandroses")
  end

  it "Can have a sell in" do
    expect(backstagepass1.sell_in).to eq(7)
  end

  it "can have quality" do
    expect(backstagepass1.quality).to eq(5)
  end

  it "can add items to items array" do
    gildedrose.add_item(backstagepass1)
    expect(gildedrose.items[0].name).to eq("Gunsandroses")
  end

  it "has max quality of 50 upon instantiation" do
    expect{BackstagePasses.new("Uponaburningbody", 7, 51)}.to raise_error "Maximum quality is 50."
  end

  it "has min quality of 0 upon instantiation" do
    expect{BackstagePasses.new("Allshallperish", 7, -1)}.to raise_error "Minimum quality is 0."
  end

  context 'Sell in' do
    before :each do
      gildedrose.add_item(backstagepass1)
    end

    it "decreases sell in date by 1" do
      gildedrose.update_quality
      expect(items[0].sell_in).to eq(6)
    end
  end

  context 'quality' do
    before :each do
      gildedrose.add_item(backstagepass1)
      gildedrose.add_item(backstagepass2)
      gildedrose.update_quality
    end

    it "increases pass quality by 2 when 10 days or less left" do
      expect(items[0].quality).to eq(7)
    end
  end
end
