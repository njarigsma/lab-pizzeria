#delivery - continous loop to help the customer
require_relative "menu.rb"

menu = Menu.new

done = false

# welcome message
puts "Hello, welcome to our pizzeria!"

# this will run until done is set to true
while not done
  puts "What can I do for you?"
  puts "1: order a pizza"
  puts "2: nothing"
  puts "-----------------"
# get input
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Let me show you the menu"
    menu.print_menu
  when 2
    done = true
  else
    puts "I don't understand"
  end
  if done
    puts "Goodbye!"
    puts "pizza image"
  end
end
