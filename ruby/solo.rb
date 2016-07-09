# 6.4 Solo Challenge: Designing and Implementing a Class
# Benedict Schurwanz

=begin 		Pseudocode - Release 0

Fire-breathing Dragons (And other dragon types, as imagined by Dungeons & Dragons)

Attributes: 
- breath type: fire, ice, lightning, acid
- color: colors for evil, metals for good
"Black", "Blue", "Green", "Red", "White", "Brass", "Bronze", "Copper", "Gold", "Silver"
- alignment: lawful good, neutral good, chaotic good, lawful neutral, true neutral, chaotic neutral, lawful evil, neutral evil, chaotic evil

Black		acid		CE
Blue		lightning	LE
-Green		acid		LE
-Red 		fire 		CE
-White 		frost 		CE
-Brass 		fire 		CG
-Bronze 	lightning 	LG
-Copper 	acid 		CG
-Gold 		fire 		LG
-Silver 	frost 		LG

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
		@color = color
		# set alignment and breath depending on color, see table
	end

#	def change_of_heart(new_align) 
#		puts "You've had a change of heart!" 
#	end

	def breathe
		puts "Roar! Whoosh of #{breath}!" 
	end

	def cast_spell
		puts "I cast Magic Missile at the darkness!"
	end

	def talk(who_talking_to) 
		case who_talking_to
		when "friend" 
			puts "Hello, my friend. Who's hungry?" 
		when "foe" 
			puts "I'm feeling hungry. Chomp!" 
		end
	end
end



























