# GPS 2.2 
# Benedict Schurwanz
# pair: Denny Wu
# guide: Clint Mullins

=begin  			Pseudocode
# Method to create a list - without using a class
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the string inputed, split it into an array, use array to create a hash with the items of the array becoming keys and the default quantity (1) becoming the value
  # set default quantity - assign a variable equal to 1 for the default
  # print the list to the console - call print_list method
# output: grocery list

# Method to add an item to a list
# input: item name and optional quantity
# steps: use default parameter value of 1 for the quantity
		add item to list with quantity
# output: print out new list

# Method to remove an item from the list
# input: item to be removed
# steps: .delete(item), item as key of hash entry
# output: print out new list

# Method to update the quantity of an item
# input: item name and new quantity
# steps: assign inputed quantity to item/key
		if item isn't in hash, add it with new quantity
# output: print out new list

# Method to print a list and make it look pretty
# input: none needed
# steps: LOOP through items in list
		inside loop, print item and quantity in a sentence
# output: printed list

=end




def create_list(initial_list = "")
	groceries = {}
	list_array = initial_list.split(' ')
	list_array.length.times do |i|
		groceries[list_array[i]] = 1
	end
	print_list(groceries)
	groceries
end

def add_item(list, item, quantity = 1)
	list[item] = quantity
	print_list(list)
	list
end

def remove_item(list, item)
	list.delete(item)
	print_list(list)
	list
end

def update_quantity(list, item, new_quantity)
	list[item] = new_quantity
	print_list(list)
	list
end

def print_list(list)
	puts "Grocery List"
	list.each do |item, quantity|
		puts "#{quantity} #{item}"
	end
	puts ""
end

=begin  driver code
grocery_list = create_list("carrots spaghetti bread")
add_item(grocery_list, "pears")
add_item(grocery_list, "peaches", 2)
remove_item(grocery_list, "pears")
update_quantity(grocery_list, "carrots", 3)
print_list(grocery_list)
=end

list = create_list()
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_quantity(list, "ice cream", 1)


=begin 		Release 5: Reflect

* I learned that it's very helpful to finish all pseudocode before writing any actual code. That way you can iron out what you're doing before you bother implementing part of it; you might change your first ideas of what code you wanted to write during the course of writing the rest of the pseudocode algorithm

* arrays allow one value - be it a string or a number - and hashes are useful for storing pairs of data. In this case each piece of data had a pair - each item had a quantity that needed to be attached to it

* a method returns what the last line of the method evaluates to. "puts" statements are equal to nil

* you can pass any object into a method as an argument - variables, data structures, other methods

* you can pass information into a method as an argument, and you get information out of a method as the return value, or by using global variables - which are accessible everywhere in the program. parameters of methods have a scope such that they are only usable inside the method, so if you want the value usable outside the method you need to return it

* I solidified my ideas of what can be passed into methods, and how to work with hashes -- how to add items to a hash and how to deal with them in a loop. 
- I'm still a little confused on whether a hash or array needs to be passed into a method, or whether the same structure is accessible inside and outside of the method without explicitly passing it in and returning it out 

=end




