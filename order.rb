# contains one or more pizza
class Order
  attr_accessor :content

  def initialize
    @content = []
  end

  def add_pizza(pizza)
    @content << pizza
  end

  def value
    @content.reduce(0){|sum, pizza| sum + pizza.price}
  end

end
