#Shake Shack

class Milkshake

	def initialize
		@base_price = 3
    @ingredients = [ ]
	end

	def add_ingredient (ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
  	total_price_of_milkshake = @base_price
	  @ingredients.each do |ingredient|
	    total_price_of_milkshake += ingredient.price
	  end
    #return our total price to whoever called for it
  	total_price_of_milkshake
	end

end


class Ingredient
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end


class Cart

attr_reader :milkshakes_order

	def initialize
		@milkshakes_order = [ ]
	end

	def add_milkshakes (milkshake)
		@milkshake = milkshake
		@milkshakes_order.push(milkshake);
	end

	def checkout
		total_to_pay = 0
		@milkshakes_order.each do |milkshake|	
		total_to_pay = total_to_pay + milkshake.price_of_milkshake
		end
		total_to_pay
	end

end

# Ingredients available at the Shake Shack Shop!
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
strawberry = Ingredient.new("Strawberry", 3)

# My cart
my_cart = Cart.new

# Milkshake 1
one_milkshake = Milkshake.new
one_milkshake.add_ingredient(banana)
one_milkshake.add_ingredient(chocolate_chips) # <3 chocolate chips!
my_cart.add_milkshakes(one_milkshake)

# Milkshake 2
another_milkshake = Milkshake.new
another_milkshake.add_ingredient(strawberry)
another_milkshake.add_ingredient(banana)
my_cart.add_milkshakes(another_milkshake)

# To checkout cart call my_cart.checkout
puts "The total amount to pay for your #{my_cart.milkshakes_order.count} milkshakes is: 
#{my_cart.checkout}$"

