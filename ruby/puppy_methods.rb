=begin
class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}"
    toy
  end
  
  def speak(int)
    p "Woof! " * int
  end
  
  def roll_over
    p "*rolls over*"
  end
  
  def dog_years(age)
    p age * 7 
  end
  
  def play_dead
    p "*plays dead*"
  end
  
end


dog = Puppy.new

dog.fetch("ball")
dog.speak(5)
dog.roll_over
dog.dog_years(7)
dog.play_dead
=end

class Kitty
  
  def initialize
    puts "meow."
  end
  
  def catch_mice
    puts "* mouse caught*"
  end
  
  def pet_cat(int)
    puts "purrs " * int
  end
end


cat = Array.new

50.times { cat << Kitty.new }

cat.each do |i|
  i.catch_mice
  i.pet_cat(2)
end


cat = Kitty.new
cat.catch_mice
cat.pet_cat(8)





