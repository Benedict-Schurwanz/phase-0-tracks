#5.4 pair
#driver: Jessi Dellert
#nav: Benedict Schurwanz



def colors 
  color1 = "blue"
  color2 = "red"
  puts "I like colors"
  yield(color1,color2)
  puts "Colors are neat!"
end 


colors do |x,y|
  puts "My favorite colors are #{x} and #{y}"  
end 

#_______________#

#array

fruit = ["apple", "orange", "banana", "blueberry"]
pie = []

fruit.each do |i|
  puts "I like to eat #{i}"
end 

pie = fruit.map do |i|
  i + " pie"
end 

puts "each and map"
p fruit 
p pie

fruit.map! do |i|
  i + " pie2"
end 

puts "after map bang!"
p fruit 



#hash

students = {"Bob Smith" => 56, "Sam Worth" => 27, "Jane Smith" => 12}

students.each do |name, age|
  puts "#{name} is #{age} years old"
  
end 


#array

num = [1,2,4,7,9]

num.delete_if {|x| x < 5}
p num

num.keep_if {|x| x <= 7}
p num

p num.select {|x| x.odd?}
p num 

#hash

letter_num = { a: 100, b: 200, c: 300 }


letter_num.delete_if {|k, v| k == :a}
p letter_num

letter_num.keep_if {|k, v| k == :b}
p letter_num

p letter_num.select {|k,v| v >= 300}
