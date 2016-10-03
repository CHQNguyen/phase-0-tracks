class List
	attr_accessor :items

	def initialize(list)
		@items = list
	end
	def get_items
		@items
	end
	def add_item(value)
		@items.push(value)
	end
	def delete_item(value)
		@items.delete(value)
	end
	def get_item(num)
		@items.fetch(num)
	end
end

newlist = List.new(["do the dishes", "mow the lawn"])
newlist.get_items
newlist.add_item("mop")
newlist.delete_item("do the dishes")
newlist.get_item(0)
