class Node
	attr_accessor :prev, :next, :value
	def initialize value
		@value = value
	end
end

class DoubllyLinkedList
	def initialize
		@nil_node = Node.new nil
		@nil_node.next = @nil_node.prev = @nil_node
	end

	def insert value
		node = Node.new value
		node.next = @nil_node.next
		node.prev = @nil_node
		@nil_node.next.prev = node
		@nil_node.next = node
	end

	def search value
		node = @nil_node.next
		node = node.next until node == @nil_node || node.value == value
		node
	end

	def deleteNode node
		node.prev.next = node.next
		node.next.prev = node.prev
	end

	def delete value
		node = search value
		deleteNode node unless node == @nil_node
	end

	def deleteFirst dummy
		deleteNode @nil_node.next
	end

	def deleteLast dummy
		deleteNode @nil_node.prev
	end

	def values
		arr = []
		node = @nil_node.next
		until node == @nil_node
			arr << node.value
			node = node.next
		end
		arr
	end
end

dll = DoubllyLinkedList.new
n = gets.to_i
n.times{
	line = gets.chomp.split
	dll.send line[0], line[1]
}
puts dll.values.join(" ")