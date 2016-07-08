class Puppy
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


