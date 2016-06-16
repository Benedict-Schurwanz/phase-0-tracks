# Vampire Detector
# DBC Phase 0 - 4.4 Solo Challenge
# written by Benedict Schurwanz
# benedict.schurwanz@gmail.com


puts "What is your name? "
name = gets.chomp

puts "How many years old are you? "
age = gets.chomp

puts "What year were you born? "
year = gets.chomp

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
puts "\n"
puts name
puts age
puts year_born
puts garlic_pref
puts health_ins_pref
=end


#until age.class == Fixnum		# check for invalid input??
#	puts "Please type an integer. How many years old are you? "
#	age = gets.chomp
#end							#  not working yet
