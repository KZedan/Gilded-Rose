require 'conjured'

describe Conjured do
  let(:conjured) {described_class.new("conjuryconjury", 7, 10)}

  it 'decreases quality by 2' do
    expect(conjured.update_quality).to eq(8)
  end
end