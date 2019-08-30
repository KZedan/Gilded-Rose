require 'product'

describe Product do
  let(:product) { Product.new("Salmon", 4, 4) }

  it 'product has a name when created' do
    expect(product.name).to eq("Salmon")
  end
end