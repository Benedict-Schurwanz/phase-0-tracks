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
 	convert user info into proper format
	put user info into hash
*	print hash

*	ask about updates

*	print hash again

=end

## 		Logic

def convert_input(h)	# takes a hash as argument, 
	# converts age and children to integer, 
	h[:age] = h[:age].to_i
	h[:children] = h[:children].to_i

	# converts luxury to boolean
	if h[:luxury] == "yes"
		h[:luxury] = true
	elsif h[:luxury] == "no"
		h[:luxury] = false
	end
	h # return hash
end


def print_hash(h) 
	h.each { |key, val|
		if key == :luxury 				# for the luxury field:
			if h[key] == true 			# if luxury is true 
				puts "luxury: yes"		# print "yes"
			elsif h[key] == false		# if luxury is false
				puts "luxury: no"		# print "no"
			end
		elsif 
			puts "#{key}: #{val}"
		end
	}
end


def update_data(h)
	puts "Would you like to change anything? Type which field do you want to change, (enter \"none\" if you are satisfied with your entries) "
# 	need to get the field that they want to change, then print the key for that field, then get the value and assign it to the value corresponding to that key
	which_field = gets.chomp	# get which field
	field_key = which_field.to_sym
	puts "What would you like to change #{which_field} to? " 
	new_value = gets.chomp # get new value for that key
	h[field_key] = new_value
	convert_input(h)
	h 	# return the updated hash
end



## 		UI

#get data
puts "Interior Designerator 5000"
puts "Please enter the following details:"

interior = {}

puts "Name: "
name_input = gets.chomp
interior[:name] = name_input

puts "Age: "
age_input = gets.chomp
interior[:age] = age_input

puts "How many children? "
number_children = gets.chomp
interior[:children] = number_children

puts "What theme would you like for your decor? "
decor_input = gets.chomp
interior[:decor] = decor_input

puts "Would you like luxury finishes? "
luxury_pref = gets.chomp
interior[:luxury] = luxury_pref

# now interior has fields name, age, children, decor, luxury, all with strings as values

#convert data to proper values (integer, boolean) where appropriate
convert_input(interior)

#print data
print_hash(interior)

#offer edit
update_data(interior)
#convert new values where appropriate
convert_input(interior)

#print edited data
print_hash(interior)








