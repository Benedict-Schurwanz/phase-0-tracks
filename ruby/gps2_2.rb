# GPS 2.2 
# Benedict Schurwanz

=begin  			Pseudocode
# Method to create a list - without using a class
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the string inputed, split it into an array, use array to create a hash with the items of the array becoming keys and the default quantity (1) becoming the value
  # set default quantity - assign a variable equal to 1 for the default
  # print the list to the console - call print_list method
# output: grocery list as hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: use default parameter value of 1 for the quantity
		add item to hash with quantity
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
# steps: loop through items in hash
		inside loop, print item and quantity in a string
# output: printed list

=end




