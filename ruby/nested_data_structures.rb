# Phase 0 - 5.5 Nested Data Structures
# Benedict Schurwanz

coffee_shop = {
	coffee_shop_name: "Metropolis Coffee Company", 
	:"Table 1" => {
		num_people: 1, 
		drinks: [ "iced coffee", "Red Eye Coffee" ], 
		computers: [ "MacBook Pro" ]
	}, 
	:"Table 2" {}
}

puts "at the #{coffee_shop[:coffee_shop_name]} coffee shop, at #{coffee_shop.flatten[2].to_s} there are #{coffee_shop[:"Table 1"][:num_people]} people, drinking #{coffee_shop[:"Table 1"][:drinks][0]} and #{coffee_shop[:"Table 1"][:drinks][1]}, and using a #{coffee_shop[:"Table 1"][:computers][0]} computer."

#trying to figure out how to print the string corresponding to the symbol instead of printing the Table 1 hash (which is the value corresponding to the "Table 1" key)
	# coffee_shop.flatten[2].to_s

# if I make the names of the tables :"Table 1" rather than :table_1 then I can more easily print the name of the table by referring to the coffee_shop hash without explicitly hardcoding it into the puts
 


