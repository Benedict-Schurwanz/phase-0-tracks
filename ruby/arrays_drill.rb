# Phase 0 - Assignment 5.2
# Benedict Schurwanz
# doing this alone because my pair didn't show up, ran out of available time in the week


# Release 2
def make_array(item1, item2, item3)
	array = [item1, item2, item3]

	array
end

def add_to_array(array, item)
	array << item

	array
end



# Release 1
array = []

p array

array << 1
array << 2
array << 3
array << 4
array << 5

p array

array.delete_at(2)

p array

array.insert(2, 'c')

p array

array = array.drop(1)

p array

includes_a = array.include?("a")
includes_c = array.include?("c")

puts "The array now includes 'a': #{includes_a}"
puts "The array now includes 'c': #{includes_c}"

array2 = ["a", "b", "c"]

total = array + array2

p total

	# # # 

p make_array(1, 2, 3)


array = add_to_array(array, 17)
p array
total = add_to_array(total, 42)
p total


