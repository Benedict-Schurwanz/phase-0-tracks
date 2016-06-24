# Phase 0 - 5.5 Nested Data Structures
# Benedict Schurwanz

coffee_shop = {
	coffee_shop_name: "Metropolis Coffee Company", 
	table_1: {
		num_people: 1, 
		drinks: [ "iced coffee", "Red Eye Coffee" ], 
		computers: [ "MacBook Pro" ]
	}, 
	table_2: {}
}

puts "at the #{coffee_shop[:coffee_shop_name]} coffee shop, at Table 1 there are #{coffee_shop[:table_1][:num_people]} people, drinking #{coffee_shop[:table_1][:drinks][0]} and #{coffee_shop[:table_1][:drinks][1]}, and using a #{coffee_shop[:table_1][:computers][0]} computer."

