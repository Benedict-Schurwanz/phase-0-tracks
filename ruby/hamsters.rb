
# hamster name
# 
puts "What is your hamster's name?"
hamster_name = gets.chomp
puts "What is the hamster's volume level? Enter a number between 1 and 10."
hamster_volume = gets.chomp
volume = hamster_volume.to_i
puts "What color is the hamster?"
hamster_color = gets.chomp
color = hamster_color.to_s
puts "Is this hamster a good candidate for adoption? Type \"yes\" or \"no\"."
hamster_candidate = gets.chomp
puts "How old is your hamster?"
hamster_age = gets.chomp
if hamster_age == ""
	hamster_age = nil
end

