# Vampire Detector
# DBC Phase 0 - 4.4 Solo Challenge
# written by Benedict Schurwanz
# benedict.schurwanz@gmail.com


puts "What is your name? "
name = gets.chomp

puts "How many years old are you? "
age = gets.to_i
while age == 0		# check for invalid input
	puts "Please type a whole number greater than 0. How many years old are you? "
	age = gets.to_i
end					# works

puts "What year were you born? "
year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? "
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? "
insurance = gets.chomp




=begin	Pseudocode

Are they a vampire?

if age = (2016 - year) and (garlic = yes OR insurance = yes) then "Probably not a vampire"
if age wrong AND (garlic = no OR insurance = no) then "Probably a vampire"
if age wrong AND garlic = no AND insurance = no then "Almost certainly a vampire"
if name = "Drake Cula" or "Tu Fang" then "Definitely a vampire"
else "Results inconclusive"

=end




#################################################################################
# notes
#################################################################################

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



