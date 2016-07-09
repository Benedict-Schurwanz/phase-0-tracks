# 6.5 Modules
# Benedict Schurwanz

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

