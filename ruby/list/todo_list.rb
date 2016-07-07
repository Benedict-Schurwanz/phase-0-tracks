# 6.6 Mandatory Pair - Testing a class with rspec
# Benedict Schurwanz
# Ann D'Esposito


class TodoList
	def initialize(list = [])
		@list = list
	end



	def add_item(new_item)
		@list << new_item
	end

	def delete_item(item)
		@list.delete(item)
	end


	def get_items	# print method
		p @list
	end

	def retrieve_item(index)
		p @list.fetch(index)
	end
	
end

# changed rspec file:
# - added require_relative
# - changed name of "retrieves an item by index" method to "retrieve_item"