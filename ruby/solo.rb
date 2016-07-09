# 6.4 Solo Challenge: Designing and Implementing a Class
# Benedict Schurwanz

=begin 		Pseudocode - Release 0

Fire-breathing Dragons (And other dragon types, as imagined by Dungeons & Dragons)

Attributes: 
- breath type: fire, ice, lightning, acid
- color: colors for evil, metals for good
"Black", "Blue", "Green", "Red", "White", "Brass", "Bronze", "Copper", "Gold", "Silver"
- alignment: lawful good, neutral good, chaotic good, lawful evil, neutral evil, chaotic evil

Black		acid		CE
Blue		lightning	LE
Green		acid		LE
Red 		fire 		CE
White 		ice 		CE
Brass 		fire 		CG
Bronze 		lightning 	LG
Copper 		acid 		CG
Gold 		fire 		LG
Silver 		ice 		LG

Methods (arguments)
- breath weapon
- cast spell
- talk to npc (friend or enemy?)
- change shape / transmogrify - into what form? depends on who they're talking to

=end

class Dragon 
# attributes: color, alignment, breath
	attr_reader :color, :breath
	attr_accessor :alignment 

	def initialize(color) 
		@color = color.downcase
		# set alignment and breath depending on color, according to table
		case color.downcase
		when "black"
			@breath = 		"acid"
			@alignment = 	"chaotic evil"
		when "blue"
			@breath = 		"lightning"
			@alignment = 	"lawful evil"
		when "green"
			@breath = 		"acid"
			@alignment = 	"lawful evil"
		when "red"
			@breath = 		"fire"
			@alignment = 	"chaotic evil"
		when "white"
			@breath = 		"ice"
			@alignment = 	"chaotic evil"
		when "brass"
			@breath = 		"fire"
			@alignment = 	"chaotic good"
		when "bronze"
			@breath = 		"lightning"
			@alignment = 	"lawful good"
		when "copper"
			@breath = 		"acid"
			@alignment = 	"chaotic good"
		when "gold"
			@breath = 		"fire"
			@alignment = 	"lawful good"
		when "silver"
			@breath = 		"ice"
			@alignment = 	"lawful good"
		end
	end

#	def change_of_heart(new_align) 
#		puts "You've had a change of heart!" 
#	end

	def breathe
		puts "Roar! *Whoosh of #{breath}*!" 
	end

	def cast_spell
		puts "I cast Magic Missile at the darkness!"
	end

	def talk(who_talking_to) 
		case who_talking_to.downcase
		when "friend" 
			puts "Hello, my friend. Who's hungry?" 
		when "foe" 
			puts "I'm feeling hungry. *Chomp*!" 
		end
	end
end


dragon_array = ["black", "blue", "green", "red", "white", "brass", "bronze", "copper", "gold", "silver"]
dracos = []

dragon_array.each do |color|
	dracos << Dragon.new(color)
end

dracos.each do |dragon|
	p dragon.color
	p dragon.breath
	p dragon.alignment
	dragon.breathe
	dragon.cast_spell
	dragon.talk("friend")
	dragon.talk("foe")
end


=begin 	# driver code
p draco.color
p draco.alignment
p draco.breath

draco.breathe
draco.cast_spell
draco.talk("friend")
draco.talk("foe")
=end



















