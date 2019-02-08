class Checkout
  attr_reader :total
  def initialize
    @total = 0
  end
  def scan(item)
    @total += item.cost
  end
end
