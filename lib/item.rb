class Item
  attr_reader :cost
  def initialize(cost)
    @cost = "£#{'%.2f' % cost}"
  end
end
