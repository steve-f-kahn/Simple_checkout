require 'item'

describe Item do
  it "Cost £12" do
    item = Item.new(12)
    expect(item.cost).to eq "£12.00"
  end
end
