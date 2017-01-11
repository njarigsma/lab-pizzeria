#delivery - continous loop to help the customer
require_relative "menu.rb"
require_relative "order.rb"


menu = Menu.new
order = Order.new
done = false

# welcome message
puts "Hello, welcome to our pizzeria!"

# this will run until done is set to true
while not done
  puts "What can I do for you?"
  puts "1: order a(nother) pizza"
  puts "2: nothing"
  puts "3: Check out (EURO #{order.value})" if order.value > 0
  puts "-----------------"
# get input
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Let me show you the menu"
    menu.print_menu
    pizza = menu.make_choice
    order.add_pizza(pizza)
  when 2
    done = true
  when 3
    order.show_order
    puts "Do you wish to pay with"
    puts "1: ideal"
    puts "2: creditcard"
    payment = gets.chomp.to_i
    done = (payment == 1 || payment == 2)
  else
    puts "I don't understand"
  end
  if done
    puts "Goodbye!"
    puts "pizza image"
  end
end
