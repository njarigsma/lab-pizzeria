# all the possible options to order
# all the possible options to order
require_relative "pizza.rb"

class Menu
  attr_accessor :pizzas

  def initialize pizzas = []
    @pizzas = pizzas
    @pizza << Pizza.new("101", "Verdure", "veggies", 9),
    @pizza << Pizza.new("102", "Marguerita", "tomatoes", 8),
    @pizza << Pizza.new("103", "Tonno", "tuna", 11),
    @pizza << Pizza.new("104", "Diavolo", "sausage", 8),
    @pizza << Pizza.new("105", "Calzone", "ham", 9),
    @pizza << Pizza.new("106", "Americana", "salami", 9),
  end
end
