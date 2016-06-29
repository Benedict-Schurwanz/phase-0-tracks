#6.3 Attributes
#Benedict Schurwanz

class Santa
	def initialize(gender, ethnicity)
#		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	#check attributes / driver code
	def about
		p @gender
		p @ethnicity
		p @reindeer_ranking
		p @age
	end

	# 		attribute-changing methods

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)  # assumes valid input
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	# getter methods

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	# setter methods

	def gender=(new_gender)
		@gender = new_gender
	end

end

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#driver code - check attributes
santas.length.times do |i|
	santas[i].about
end

santas[0].gender = "Other"
santas[0].celebrate_birthday
santas[0].get_mad_at("Vixen")
puts "age #{santas[0].age}"
puts "ethnicity #{santas[0].ethnicity}"
santas[0].about


