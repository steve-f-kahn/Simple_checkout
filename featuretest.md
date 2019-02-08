require './lib/item'
require './lib/checkout'

item = Item.new(10.00)
item.cost
checkout = Checkout.new
checkout.scan(item)
checkout.total == '£10.00'
