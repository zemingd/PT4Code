class Node
	attr_accessor :prev, :next, :value
	def initialize value
		@value = value
	end
end

class DoubllyLinkedList
	def initialize
		@head = @tail = nil
	end

	def insert value
		node = Node.new value
		if @head.nil?
			@tail = node
		else
			node.next = @head
			@head.prev = node
		end
		@head = node
	end

	def delete value
		return unless @head
		if @head.value == value
			deleteFirst nil
		else
			node = @head.next
			node = node.next while node && node.value != value
		end
		if node
			unless node.next
				deleteLast nil
			else
				node.prev.next = node.next
				node.next.prev = node.prev
			end
		end
	end

	def deleteFirst dummy
		return unless @head
		if @head.next
			@head = @head.next
			@head.prev = nil
		else
			@head = @tail = nil
		end
	end

	def deleteLast dummy
		return unless @tail
		if @tail.prev
			@tail = @tail.prev
			@tail.next = nil
		else
			@head = @tail = nil
		end
	end

	def values
		arr = []
		node = @head
		while node
			arr << node.value
			node = node.next
		end
		return arr
	end
end

dll = DoubllyLinkedList.new
n = gets.to_i
n.times{
	line = gets.chomp.split
	dll.send line[0], line[1]
}
puts dll.values.join(" ")