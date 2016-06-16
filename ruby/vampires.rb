# Vampire Detector
# DBC Phase 0 - 4.4 Solo Challenge
# written by Benedict Schurwanz
# benedict.schurwanz@gmail.com


puts "What is your name? "
name = gets.chomp

puts "How many years old are you? "
age = gets.to_i
while age == 0		# check for invalid input
	# if user types letters instead of numbers, age will equal 0
	# if user types a number with decimals - 2.3 - age will get rounded down to an integer
	puts "Please type a whole number greater than 0. How many years old are you? "
	age = gets.to_i
end					# works

puts "What year were you born? "
year = gets.to_i
#year = 2016 - year_input

puts "Our company cafeteria serves garlic bread. Should we order some for you? "
garlic_input = gets.chomp
# ask again if invalid input
until ((garlic_input == "Yes") || (garlic_input == "yes")  || (garlic_input == "y") || (garlic_input == "Y") || (garlic_input == "No") || (garlic_input == "no") || (garlic_input == "N") || (garlic_input == "n"))
		puts "Please type \"yes\" or \"no\""
		garlic_input = gets.chomp
end
# set garlic to boolean based on user input
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
# set insurance to boolean based on user input
if ((insurance_input == "Yes") || (insurance_input == "yes")  || (insurance_input == "y") || (insurance_input == "Y"))
		insurance = true;
elsif ((insurance_input == "No") || (insurance_input == "no") || (insurance_input == "N") || (insurance_input == "n"))
		insurance = false;
end

# run vampire test
if age == (2016 - year) && (garlic || insurance)
	vampire = 1
elsif age != (2016 - year) && (!garlic || !insurance)
	vampire = 2
elsif age != (2016 - year) && !garlic && !insurance
	vampire = 3
elsif name = "Drake Cula" || name = "Tu Fang"
	vampire = 4
else
	vampire = 0
end

# print vampire test results
if vampire = 1
	puts "Probably not a vampire."
elsif vampire = 2
	puts "Probably a vampire."
elsif vampire = 3
	puts "Almost certainly a vampire."
elsif vampire = 4
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end








#################################################################################
# notes
#################################################################################

=begin	Pseudocode

Are they a vampire?

if age = (2016 - year) and (garlic = yes OR insurance = yes) then "Probably not a vampire"
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



