class DoublyLinkedList

	def initialize
		@head = nil
		@size = 0
	end

	def insert(value)
		if @head
			new_entry = Entry.new(value, @head.prev, @head)
			@head.prev = new_entry
			@head.succ = new_entry if @size <= 1
			@head = new_entry
		else
			@head = Entry.new(value, nil, nil)
			@head.prev = @head
			@head.succ = @head
		end
		@size += 1
	end

	def delete(value)
		entry = @head
		@size.times do
			if entry.value == value
				return if clear_if_single_entry
				entry.prev.succ = entry.succ
				entry.succ.prev = entry.prev
				@size -= 1
			end
			entry = entry.succ
		end
	end

	def deleteFirst
		return if clear_if_single_entry
		@head.succ.prev = @head.prev
		@head.prev.succ = @head.succ
		@head = @head.succ
		@size -= 1
	end

	def deleteLast
		return if clear_if_single_entry
		@head.prev.prev.succ = @head
		@head.prev = @head.prev.prev
		@size -= 1
	end

	def display
		entry = @head
		(@size - 1).times do
			printf "#{entry.value} "
			entry = entry.succ
		end
		printf "#{entry.value}\n"
	end

	private

	def clear_if_single_entry
		if @size <= 1
			@head = nil
			@size = 0
			true
		else
			false
		end
	end

	class Entry
		attr_accessor :value, :prev, :succ

		def initialize(value, prev, succ)
			@value = value
			@prev  = prev
			@succ  = succ
		end

	end

end

list = DoublyLinkedList.new
n = STDIN.gets.split[0].to_i
n.times do
	method_name, param = STDIN.gets.split
	if list.respond_to?(method_name)
		if method_name == "insert" || method_name == "delete"
			list.send(method_name, param)
		else
			list.send(method_name)
		end
	end
end
list.display