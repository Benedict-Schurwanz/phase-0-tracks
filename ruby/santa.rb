#6.3 Attributes
#Benedict Schurwanz

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age = 0)
#		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# check attributes / driver code
	def about
		p @gender
		p @ethnicity
		p @reindeer_ranking
		p @age
	end

			# attribute-changing methods

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)  # assumes valid input
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

			# getter methods
#	def age
#		@age
#	end

#	def ethnicity
#		@ethnicity
#	end

			# setter methods

#	def gender=(new_gender)
#		@gender = new_gender
#	end
end

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("snickerdoodle")

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

#driver code - check attributes
#santas.length.times do |i|
#	santas[i].about
#end

#santas[0].gender = "Other"
#santas[0].celebrate_birthday
#santas[0].get_mad_at("Vixen")
#puts "age #{santas[0].age}"
#puts "ethnicity #{santas[0].ethnicity}"
#santas[0].about


=begin 			Release 4 - "Build me an army worth of the North Pole"

create many santas
- random age 0-140
- random ethnicity - ethnicity_array
"White", "Black", "Native American or Alaska Native", "Asian", "Native Hawaiian", "Other Pacific Islander", "Albanian", "Arab", "Armenian", "Assyrian", "Azerbaijani", "Balochi", "Bamar", "Basque", "Bengali", "Berber", "Bihari", "Bosniak", "Brahui", "Bulgarian", "Catalan", "Chuvash", "Circassian", "Congolese", "Croat", "Czech", "Danish", "Dutch", "English", "Estonian", "Faroese", "Finnish", "French", "Gagauz", "Galician", "Georgian", "German", "Greek", "Gujarati", "Han Chinese", "Hindustani", "Hui", "Hungarian", "Icelander", "Irish", "Italian", "Japanese", "Javanese", "Jewish", "Kannada", "Kazakh", "Korean", "Kurdish", "Kyrgyz", "Laz", "Lebanese", "Macedonian", "Malayali", "Malay", "Manchu", "Marathi", "Mongol", "Nepali", "Norwegian", "Oromo", "Pashtun", "Persian", "Polish", "Portuguese", "Punjabi", "Romani", "Romanian", "Russian", "Scottish", "Serb", "Sindhi", "Sinhalese", "Slovak", "Slovene", "Spanish", "Sundanese", "Swedish", "Tamil", "Telugu", "Thai", "Tibetan", "Tuareg", "Turkmen", "Turkish", "Ukrainian", "Uyghur", "Vietnamese", "Volga", "Tatar", "Welsh", "Zhuang"


- random gender - gender_array
"Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"

* how to randomly select an array item:
- array.sample

* how to generate a random number:
rand(140)

=end


ethnicity_array = ["White", "Black", "Native American or Alaska Native", "Asian", "Native Hawaiian", "Other Pacific Islander", "Albanian", "Arab", "Armenian", "Assyrian", "Azerbaijani", "Balochi", "Bamar", "Basque", "Bengali", "Berber", "Bihari", "Bosniak", "Brahui", "Bulgarian", "Catalan", "Chuvash", "Circassian", "Congolese", "Croat", "Czech", "Danish", "Dutch", "English", "Estonian", "Faroese", "Finnish", "French", "Gagauz", "Galician", "Georgian", "German", "Greek", "Gujarati", "Han Chinese", "Hindustani", "Hui", "Hungarian", "Icelander", "Irish", "Italian", "Japanese", "Javanese", "Jewish", "Kannada", "Kazakh", "Korean", "Kurdish", "Kyrgyz", "Laz", "Lebanese", "Macedonian", "Malayali", "Malay", "Manchu", "Marathi", "Mongol", "Nepali", "Norwegian", "Oromo", "Pashtun", "Persian", "Polish", "Portuguese", "Punjabi", "Romani", "Romanian", "Russian", "Scottish", "Serb", "Sindhi", "Sinhalese", "Slovak", "Slovene", "Spanish", "Sundanese", "Swedish", "Tamil", "Telugu", "Thai", "Tibetan", "Tuareg", "Turkmen", "Turkish", "Ukrainian", "Uyghur", "Vietnamese", "Volga", "Tatar", "Welsh", "Zhuang"]
gender_array = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]

santas = [] 

10000.times do |i|
	random_age = rand(140)
	random_gender = gender_array.sample
	random_ethnicity = ethnicity_array.sample
	santas << Santa.new(random_gender, random_ethnicity, random_age)
	p santas[i].gender
	p santas[i].ethnicity
	p santas[i].age 
end

# I felt like storing it in an array - a way to do it without an array is to use just a "santa" variable and overwrite it each time through the loop







