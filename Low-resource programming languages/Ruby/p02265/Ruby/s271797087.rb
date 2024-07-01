class DoublyLinkedList

	def initialize
		@guard = Entry.new(nil, nil, nil)
		@guard.prev = @guard
		@guard.succ = @guard
	end

	def insert(value)
		new_entry = Entry.new(value, @guard, @guard.succ)
		@guard.succ.prev = new_entry
		@guard.succ = new_entry
	end

	def delete(value)
		entry = @guard.succ
		entry = entry.succ while entry.value && entry.value != value
		deleteEntry(entry) if entry.value
	end

	def deleteFirst
		deleteEntry(@guard.succ) if @guard.succ.value
	end

	def deleteLast
		deleteEntry(@guard.prev) if @guard.prev.value
	end

	def display
		entry = @guard.succ

		printf "#{entry.value}"
		entry = entry.succ

		while entry.value
			printf " #{entry.value}"
			entry = entry.succ
		end
		printf "\n"
	end

	private
	def deleteEntry(entry)
		entry.succ.prev = entry.prev
		entry.prev.succ = entry.succ
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