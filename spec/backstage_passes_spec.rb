require 'backstage_passes'

describe BackstagePasses do
  let (:backstagepasses1) {described_class.new("rockandroll", 10, 5)}
  let (:backstagepasses2) {described_class.new("rockandstroll", 5, 5)}
  let (:backstagepasses3) {described_class.new("rockandstroll", 12, 5)}
  let (:backstagepasses4) {described_class.new("rockandstroll", -3, 5)}

  it "increases pass quality by 2 when 10 days or less left" do
    expect(backstagepasses1.update_quality).to eq(7)
  end

  it "increases pass quality by 3 when 5 days or less left" do
    expect(backstagepasses2.update_quality).to eq(8)
  end

  it "increases pass quality by 1 when more that 10 days left" do
    expect(backstagepasses3.update_quality).to eq(6)
  end

  it "resets pass quality to 0 when minus amount of days left" do
    expect(backstagepasses4.update_quality).to eq(0)
  end
end