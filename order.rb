# contains one or more pizza
class Order
  attr_accessor :content

  def initialize
    @content = []
  end

  def add_pizza(pizza)
    @content << pizza
  end

end
