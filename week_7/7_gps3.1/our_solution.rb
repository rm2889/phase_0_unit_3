# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Raghav Malik
# 2.
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to have an item name, and the quantity needed associated with it
# As a user, I want to be able to print out my grocery list
# As a user, I want to be able to add an item and quantity to my grocery list
# As a user, I want to be able to delete an item from my grocery list
# As a user, I want to be able to edit an item from my grocery list
 
# Pseudocode
=begin
Class grocery_item

Instance variables:
@item_name, @item_quantity

Methods:

print_item
no input 
outputs a string that prints item_quantity + " of " + item_name + " required"

edit_name(new_name)
	IF new_name
		self.item_name = new_name
	END IF

edit_quantity(new quantity)
	self.new_quantity = new_quantity


Class Grocery_list


=end 

# Your fabulous code goes here....

class Grocery_item
	
	private
	attr_writer :item_name, :item_quantity

	public
	attr_reader :item_name, :item_quantity

	def initialize(item_name, item_quantity)
		@item_name = item_name
		@item_quantity = item_quantity
	end

	def edit_name(new_name)
		self.item_name = new_name
	end

	def edit_quantity(new_quantity)
		self.item_quantity = new_quantity
	end

	def print_item
		puts item_quantity.to_s + " " + item_name + " required"
	end
end

class Grocery_list
	private
	attr_writer :item_list

	public
	attr_reader :item_list

	def initialize(item_list=[])
		@item_list = item_list
	end

	def add(item)
		if not self.item_list.include?(item)
			self.item_list.push(item)
		end
	end

	def remove(item)
		self.item_list.delete(item)
	end	

	def print
		self.item_list.each {|item|
			item.print_item
		}
	end
end



# DRIVER CODE GOES HERE. 
 eggs = Grocery_item.new("eggs", 12)
 eggs.print_item
 eggs.edit_name("egg")
 # eggs.name = "alpha"
 puts eggs.item_name == "egg"
 eggs.edit_quantity(11)
 puts eggs.item_quantity == 11
 bread = Grocery_item.new("bread", 2)
 syrup = Grocery_item.new("Aunt Jemima's Syrup", 1)

 my_list = Grocery_list.new([eggs])
 my_list.print
 my_list.add(bread)
 my_list.print
 my_list.remove(eggs)
 my_list.print
 my_list.add(syrup)
 my_list.print

# REFLECTION
=begin
I tried to follow POODR as much as I could in this example - separating it into two distinct classes that are cohesive. 
I wonder if I can do a better job here...

=end

 