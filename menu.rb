# all the possible options to order
# all the possible options to order
require_relative "pizza.rb"

class Menu
  attr_accessor :pizzas

# initialize
  def initialize ()
    @pizzas = []
    @pizzas << Pizza.new("101", "Verdure", "veggies", 9)
    @pizzas << Pizza.new("102", "Marguerita", "tomatoes", 8)
    @pizzas << Pizza.new("103", "Tonno", "tuna", 11)
    @pizzas << Pizza.new("104", "Diavolo", "sausage", 8)
    @pizzas << Pizza.new("105", "Calzone", "ham", 9)
    @pizzas << Pizza.new("106", "Americana", "salami", 9)
  end

# print the menu
  def print_menu()
    puts "We have on our menu: "
    @pizzas.each do |pizza|
      puts "#{pizza.number}: #{pizza.name} - #{pizza.ingredients} (#{pizza.price})."
    end
  end

# make a choice
  def make_choice()
    puts "What would you like? (number)"
    pizza_number = gets.chomp
    @pizzas.find{|pizza| pizza.number == pizza_number}
  end

end
