# 6.5 Modules
# Benedict Schurwanz

=begin 			old shout module
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :D"
	end
end

Shout.yell_angrily("loud noises")
Shout.yelling_happily("happy noises")
=end


module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " :D"
	end
end

class Isley_Brothers
	include Shout
end

class Tears_for_Fears
	include Shout
end

tff = Tears_for_Fears.new
ib = Isley_Brothers.new

p tff.yell_angrily("Shout! Shout! Let it all out")
p tff.yell_angrily("These are the things I can do without")
p tff.yell_angrily("Come on, I'm talking to you")

p ib.yell_happily("You know you make me wanna Shout")
