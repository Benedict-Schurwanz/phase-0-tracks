# Chicago Salamanders 2016 - Phase 0 - 5.6 Solo challenge
# Benedict Schurwanz

=begin 				# Pseudocode
		What to do:
- get name
- swap first and last name 
	# change string to array of words, reverse it, change it back to a string
- Change all vowels to next vowel ("aeiou") and consonants to next consonant
	# make strings, vowels = "aeiou" and consonants = "bcdfghjklmnpqrstvwxyz", and/or arrays vowels_array and consonants_array
	# if letter is in vowels - use the method that finds if it's a member of that array/string - then get the index of vowels where the letter is, and change the letter in the string to the next letter in the array; if it's in consonants do that with consonants array
	# if it's the last letter - 'z' or 'u' - it needs to wrap around to the first letter
	# if the letter in the original is uppercase, then .upcase the result

Methods to write - one for each small job
# next vowel - takes one character and makes it the next vowel
	- what is the index of where is the character in vowels_array: index_of_character_in_question
	- if character_in_question is 'u'
		- return 'a'
	- if character is not 'u'
		- return the character from vowels array with index_of_character_in_question + 1

# next consonant - takes one character and makes it the next consonant
	- what is the index of where is the character in consonants_array: index_of_character_in_question
	- if character_in_question is 'z'
		- return 'a'
	- if character is not 'z'
		- return the character from consonants array with index_of_character_in_question + 1

# surname_swap - swap the first and last name
	- change string to array of words, 
		- string.split(' ')
	- reverse it, 
		- array.reverse
	- change it back to a string
		- array.join(' ')

# name changer - do the things
	- loop through the string, 
	- check if it's a vowel, consonant, or space
	- if vowel/consonant, call appropriate next_ method
	- if space, go to next iteration in loop


Helpful things:
# where in the array is it: array.index(character_in_question)
vowels = "aeiou"
vowels_array = vowels.chars
consonants = "bcdfghjklmnpqrstvwxyz"
consonants_array = consonants.chars

=end





def next_vowel(character)	# assumes character is a vowel
	vowels = "aeiou"
	vowels_array = vowels.chars
	new_character = ""		# where our answer will go
	new_index = nil

	our_index = vowels_array.index(character)
	
	if character != "u"
		new_index = our_index + 1
	elsif character == "u"
		new_index = 0
	end

	new_character = vowels_array[new_index]

	new_character	# returns the new character
end		# tested, working

# same thing but for consonants
def next_consonant(character)	# assumes character is a consonant
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants_array = consonants.chars
	new_character = ""		# where our answer will go
	new_index = nil

	our_index = consonants_array.index(character)
	
	if character != "z"
		new_index = our_index + 1
	elsif character == "z"
		new_index = 0
	end

	new_character = consonants_array[new_index]

	new_character	# returns the new character
end		# tested, working

# takes a string, swap first and last name
def surname_swap(name)
	name_array = name.split(' ')
	reversed_name_array = name_array.reverse
	reversed_name = reversed_name_array.join(' ')

	reversed_name 	# returns reversed name
end 	# works


def name_changer(name)
	changed_name = ""
	index = 0
	while index < name.length do
		puts "#{index} #{name[index]}"
		index += 1
	end

	changed_name
end


name = "Jarbo camps"
#puts name[0]
#character = name[0]
#puts character






#name_changer("Joe")


=begin 
# name changer - do the things
#	- loop through the string, index = 0
#while index < name.length do
#	puts "#{index} #{name[index]}"
#	index += 1
#end
#	- check if it's a vowel, consonant, or space
#	- if vowel/consonant, call appropriate next_ method
#	- if space, go to next iteration in loop
=end

































