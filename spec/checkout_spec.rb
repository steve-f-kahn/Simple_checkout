require 'checkout'
require 'item'

describe Checkout do

  before :each do
    @checkout = Checkout.new
  end

  it "Responds to scan" do
    item = Item.new(10)
    expect(@checkout).to respond_to(:scan).with(1).arguments
  end

  it "Shows total of all the scanned items. The items total 50" do
    items = [
      Item.new(10),
      Item.new(5),
      Item.new(15),
      Item.new(12),
      Item.new(8)
    ]
    items.each do |item|
      @checkout.scan(item)
    end
    expect(@checkout.total).to eq 50
  end

  it "Shows total of all the scanned items. The items total 45" do
    items = [
      Item.new(7),
      Item.new(5),
      Item.new(13),
      Item.new(12),
      Item.new(8)
    ]
    items.each do |item|
      @checkout.scan(item)
    end
    expect(@checkout.total).to eq 45
  end

end
