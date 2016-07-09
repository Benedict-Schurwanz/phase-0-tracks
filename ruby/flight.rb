# 6.5 Modules - Release 2
# Benedict Schurwanz

module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} feet..."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end



bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

