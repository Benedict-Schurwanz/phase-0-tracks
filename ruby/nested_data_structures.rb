# Phase 0 - 5.5 Nested Data Structures
# Benedict Schurwanz

coffee_shop = {
	table_1: {
		num_people: 1, 
		drinks: [ "iced coffee" ], 
		computers: [ "macbook pro" ]
	}, 
	table_2: {}
}

puts "at the coffee shop, at Table 1 there are #{coffee_shop[:table_1][:num_people]} people,"
#puts " drinking #{coffee_shop[:table_1][:drinks].each {}}"