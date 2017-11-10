require 'pry'
# - the user chooses from a list of main dishes
# - the user chooses 2 side dish items
# - computer repeats users order
# - computer totals lunch items and displays total

# wallet class
# OR have a user class, and let the user have a wallet
# dish class
# menu items: hash

class Main
  attr_accessor :id, :item, :price, :calories

  def initialize(id, item, price, calories)
    @id = id
    @main = item
    @price = price
    @calories = calories
  end
end

class Side < Main
  attr_accessor :id, :side, :price, :calories

  def initialize(id, side, price, calories)
    @id = id
    @side = side
    @price = price
    @calories = calories
  end
end

class Drink < Main
  attr_accessor :id, :drink, :price, :calories

  def initialize(id, drink, price, calories)
    @id = id
    @drink = drink
    @price = price
    @calories = calories
  end
end
class Purchase
  attr_accessor :name, :balance, :order

  def initialize
    @name = ''
    @balance = ''
    @order = []
  end

  def customer_info
    puts 'What is your damn name?'
    @name = gets.strip
    puts 'How much can your broke arse afford?'
    @balance = gets.strip
  end
end

class Drink < Main
  attr_accessor :main, :side, :drink, :price

  def initialize(id, drink, price)
    @id = id
    @drink = drink
    @price = price
    @calories = calories
  end
end

class LunchLady
#main
@menu = []
@side_menu = []
@drink = []
@sides

@menu << Dish.new(1, "Burger", 8.55, 800)
@menu << Dish.new(2, "Chicken", 9.99, 500)
@menu << Dish.new(3, "Pasta", 7.99, 400)
#side
@side << Dish.new(1, "Fruit", 1.99, 100)
@side << Dish.new(2, "Potatos", 2.99, 300)
@side << Dish.new(3, "Kisses", 2.99, 200)
#drink
@drink << Dish.new(1, "Soda", 3.99, 100)
@drink << Dish.new(2, "Juice", 3.99, 50)
@drink << Dish.new(3, "Water", 1.50, 0)

def greeting
  puts "\n"
  puts "~ Welcome Dick's Lunch Lady Land ~"
  puts "______________________________________\n"
  puts "What the hell do you want to order, fatty?"

  @diner.get_user_info
  show_main_menu
end

# def receive_side_order
#   puts "\n"
#   input = STDIN.gets.strip.gsub(" ", "").split(",")
#   input.each do |x|
#     @dishes.each do |y|
#       if x.to_i == y.instance_variable_get(:@id) || x.capitalize == y.instance_variable_get(:@name)
#         @side_dishes << y
#         @cost += y.instance_variable_get(:@price)
#       end
#     end
#   end
#   if @side_dishes.length < 1
#     puts "\n"
#     puts "Invalid Input Try Again"
#     place_side_order
#     receive_side_order
#   end
# end
# def view_order
#   puts "\n"
#   puts "==!Order Placed!=="
#   puts "\n"
#   puts "Total Cost: #{@cost}"
#   puts "\n"
#   puts "Main Dish"
#   puts "---------"
#   puts @main_dish.display_content
#   puts "\n"
#   puts "Side Dishes"
#   puts "----------"
#   @side_dishes.each { |x| puts x.display_content}
#   puts "\n"
#   puts "All finished? Enter Y or N"
#   puts "\n"
#   quit_program = gets.strip.upcase
#   if quit_program == "Y"
#     exit
#   else


lunch_lady = LunchLady.new
lunch_lady.greeting
