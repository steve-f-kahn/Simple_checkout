class Checkout
  def initialize
    @total = 0.00
  end
  def scan(item)
    @total += item.cost.reverse.chomp("£").reverse.to_f
  end
  def total
    total = "£#{'%.2f' % @total}"
  end
end
