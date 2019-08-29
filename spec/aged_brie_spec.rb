require 'aged_brie'

describe AgedBrie do
  let(:agedbrie) {described_class.new("AgedBrie", 2, 46)}
  let(:briedelacreme) {double(:brie, increase_quality)}

  it "increases the quality if less than 50" do
    expect(agedbrie.update_quality).to eq(47)
  end
end