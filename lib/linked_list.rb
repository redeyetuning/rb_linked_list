class Node

	attr_accessor :value, :next_node

	def initialize value, next_node=nil
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
	def append value= nil
		if @tail  
			current = Node.new value
			@tail.next_node = current 
			@tail = current
		else 
			@tail = Node.new value
			@head = @tail  
		end
		@nodes += 1
	end

	#prepend adds a new node to the start of the list
	def prepend value= nil
		if @head 
		 	current = Node.new value
		 	current.next_node = @head
		 	@head = current
		else
			@head = Node.new value
			@tail = @head
		end
		@nodes += 1
	end

	#size returns the total number of nodes in the list
	def size
		@nodes
	end

	#head returns the first node in the list
	def head
		@head
	end

	#tail returns the last node in the list
	def tail
		@tail
	end

	#at(index) returns the node at the given index
	def at index, data=nil
		i = 0
		current = @head
		answer = nil
		until i == index do
			yield(current,i) ? answer = yield(current,i) : nil  if block_given?  
			current = current.next_node
			i += 1
		end
		block_given? ? answer : current
	end

	#pop removes the last element from the list
	def pop
		if @nodes == 1
			@head = nil
			@tail = nil
		else
			@tail = self.at @nodes-2
			@tail.next_node = nil
		end
		@nodes -= 1 if @nodes > 0
	end

	#contains? returns true if the passed in value is in the list and otherwise returns false.
	def contains? data
		self.at(@nodes, data){|current,i| true if current.value == data}
	end

	#find(data) returns the index of the node containing data, or nil if not found.
	def find data
		self.at(@nodes, data){|current,i| i if current.value == data}
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

