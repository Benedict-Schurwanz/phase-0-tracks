# Vampire Detector
# DBC Phase 0 - 4.4 Solo Challenge
# written by Benedict Schurwanz
# benedict.schurwanz@gmail.com



## Get Input
puts "What is your name? "
name = gets.chomp

puts "How many years old are you? "
age = gets.to_i
# if user types letters instead of numbers, age will equal 0, which is also an invalid age
# if user types a number with decimals - 2.3 - age will get rounded down to an integer
while age == 0		# check for invalid input
	puts "Please type a whole number greater than 0. How many years old are you? "
	age = gets.to_i
end

puts "What year were you born? "
year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? "
garlic_input = gets.chomp
# ask again if invalid input
until ((garlic_input == "Yes") || (garlic_input == "yes")  || (garlic_input == "y") || (garlic_input == "Y") || (garlic_input == "No") || (garlic_input == "no") || (garlic_input == "N") || (garlic_input == "n"))
		puts "Please type \"yes\" or \"no\""
		garlic_input = gets.chomp
end
# convert garlic preference to boolean based on user input
if ((garlic_input == "Yes") || (garlic_input == "yes")  || (garlic_input == "y") || (garlic_input == "Y"))
		garlic = true;
elsif ((garlic_input == "No") || (garlic_input == "no") || (garlic_input == "N") || (garlic_input == "n"))
		garlic = false;
end

puts "Would you like to enroll in the company's health insurance? "
insurance_input = gets.chomp
# ask again if invalid input
until ((insurance_input == "Yes") || (insurance_input == "yes")  || (insurance_input == "y") || (insurance_input == "Y") || (insurance_input == "No") || (insurance_input == "no") || (insurance_input == "N") || (insurance_input == "n"))
		puts "Please type \"yes\" or \"no\""
		insurance_input = gets.chomp
end
# convert insurance preference to boolean based on user input
if ((insurance_input == "Yes") || (insurance_input == "yes")  || (insurance_input == "y") || (insurance_input == "Y"))
		insurance = true;
elsif ((insurance_input == "No") || (insurance_input == "no") || (insurance_input == "N") || (insurance_input == "n"))
		insurance = false;
end



# run vampire test
vampire = 0		# initialize variable
puts vampire 	# monitor changes in variable
if (age == (2016 - year) || age == (2015 - year)) && (garlic || insurance)
	vampire = 1
	puts vampire 	# monitor changes in variable 
end
if !(age == (2016 - year) || age == (2015 - year)) && (!garlic || !insurance)
	vampire = 2
	puts vampire 	# monitor changes in variable
end
if !(age == (2016 - year) || age == (2015 - year)) && !garlic && !insurance
	vampire = 3
	puts vampire 	# monitor changes in variable
end
if name == "Drake Cula" || name == "Tu Fang"
	vampire = 4
	puts vampire 	# monitor changes in variable
end

# print vampire test results
if vampire == 1
	puts "Probably not a vampire."
	puts vampire 	# check final variable value
elsif vampire == 2
	puts "Probably a vampire."
	puts vampire 	# check final variable value
elsif vampire == 3
	puts "Almost certainly a vampire."
	puts vampire 	# check final variable value
elsif vampire == 4
	puts "Definitely a vampire."
	puts vampire 	# check final variable value
else
	puts "Results inconclusive."
	puts vampire 	# check final variable value
end


=begin		# plan: test all inputs and outputs
any name, age right, garlic, insurance 		0, 1
any name, age right, !garlic, insurance 	0, 1
any name, age right, garlic, !insurance 	0, 1
any name, age right, !garlic, !insurance 	0

any name, age wrong, garlic, insurance 		0
any name, age wrong, !garlic, insurance 	0, 2
any name, age wrong, garlic, !insurance 	0, 2
any name, age wrong, !garlic, !insurance 	0, 2, 3


bad name, age right, garlic, insurance  	0, 1, 4
bad name, age right, !garlic, insurance 	0, 1, 4
bad name, age right, garlic, !insurance 	0, 1, 4
bad name, age right, !garlic, !insurance 	0, 4

bad name, age wrong, garlic, insurance  	0, 4
bad name, age wrong, !garlic, insurance 	0, 2, 4
bad name, age wrong, garlic, !insurance 	0, 2, 3, 4
bad name, age wrong, !garlic, !insurance 	0, 4

=end


#################################################################################
# notes
#################################################################################

=begin	Pseudocode

Are they a vampire?

if (age == (2016 - year) or (2015 - year)) and (garlic = yes OR insurance = yes) then "Probably not a vampire"
if age wrong AND (garlic = no OR insurance = no) then "Probably a vampire"
if age wrong AND garlic = no AND insurance = no then "Almost certainly a vampire"
if name = "Drake Cula" or "Tu Fang" then "Definitely a vampire"
else "Results inconclusive"

=end





=begin	Check variables: 
puts "\n\n"
puts name
puts name.class
puts age
puts age.class
puts year
puts year.class
puts garlic
puts garlic.class
puts insurance
puts insurance.class
=end



