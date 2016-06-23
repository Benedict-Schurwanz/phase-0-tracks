# Phase 0 - 5.3 - Release 3
# Benedict Schurwanz



=begin		# pseudocode

# Prompt user for following information	
name
age
number of children
decor theme
luxury finishes?
# Add each piece of data to a hash with a symbol key matching what the user was prompted for
	- convert age, number of children to integer
	- convert luxury to boolean
	- name and decor theme can be strings

# print hash
# do you want to update? which field do you want to change? Enter "none" if you are satisfied with your entries. 
	# ignore bad input

# print hash
done

=end

=begin 		# logic details

What tasks do we need to do: 
	make a hash
	get user info

* 	convert user info into proper format
	put user info into hash

*	ask about updates

=end

# Logic

def print_hash(h) 
	h.each { |key, val|
		puts "#{key}: #{val}"
	}
end


# 	UI

#get data
puts "Interior Designerator 5000"
puts "Please enter the following details:"

interior = {}

puts "Name: "
interior[:name] = gets.chomp

puts "Age: "
Age = gets.chomp
interior[:age] = Age.to_i

puts "How many children? "
number_children = gets.chomp
interior[:children] = number_children.to_i

puts "What theme would you like for your decor? "
interior[:decor] = gets.chomp

puts "Would you like luxury finishes? "
luxury_pref = gets.chomp
if luxury_pref == "yes"
	interior[:luxury] = true
elsif luxury_pref == "no"
	interior[:luxury] = false
end

#print data
print_hash(interior)

#offer edit
edit_data(interior)

#print edited data
print_hash(interior)








