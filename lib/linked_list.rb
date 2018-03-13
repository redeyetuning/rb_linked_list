class Node

	attr_accessor :value, :next_node

	def initialize value= nil, next_node= nil
		@value = value  
		@next_node = next_node 
	end 

end

class	LinkedList

	attr_accessor :head, :tail, :nodes

	def initialize
		@head = nil
		@tail = nil
		@nodes = 0
	end

	# append adds a new node to the end of the list
	def append
		@head == nil ? @head = Node.new : @tail = Node.new
		@nodes += 1
	end

	#prepend adds a new node to the start of the list
	def prepend value=nil
		@linked_list.select{|item| item.next_node += 1 if item.next_node != nil}
		@linked_list.unshift(Node.new value, 1)
		@nodes += 1
	end

	#size returns the total number of nodes in the list
	def size
		@nodes
	end

	#head returns the first node in the list
	#def head
	#	@linked_list[0]
	#end

	#tail returns the last node in the list
	def tail
		@linked_list[@nodes-1]
	end

	#at(index) returns the node at the given index
	def at index
	end

	#pop removes the last element from the list
	def pop
	end

	#contains? returns true if the passed in value is in the list and otherwise returns false.
	def contains?
	end

	#find(data) returns the index of the node containing data, or nil if not found.
	def find data
	end

	#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
	end

	#insert_at(index) that inserts the node at the given index
	def insert_at index
	end

	#remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.
	def remove_at index
	end

end

