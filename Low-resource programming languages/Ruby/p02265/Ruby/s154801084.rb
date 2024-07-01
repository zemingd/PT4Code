class DoubleLinkedListItem
	attr_reader :previous_item, :next_item, :key
	attr_writer :previous_item, :next_item, :key
	
	def initialize(key)
		@previous_item = nil
		@next_item = nil
		@key = key
	end
end

class DoubleLinkedList
	attr_reader :head, :tail
	attr_writer :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end
	
	def insert(key)
		tmp = DoubleLinkedListItem.new(key)
		if self.head == nil then
			self.head = tmp
			self.tail = tmp
		elsif self.head.next_item == nil then
			self.head = tmp
			self.head.next_item = self.tail
			self.tail.previous_item = self.head
		else
			tmp.next_item =  self.head
			self.head.previous_item = tmp
			self.head = tmp
		end
	end
	
	def delete(key)
		deleted = false
		if self.head.key == key then
			self.deleteFirst
			deleted = true
		else
			iterator = self.head.next_item
			until iterator == self.tail do
				if iterator.key == key then
					iterator.previous_item.next_item = iterator.next_item
					iterator.next_item.previous_item = iterator.previous_item
					iterator.previous_item = nil
					iterator.next_item = nil
					deleted = true
					break
				else
					iterator = iterator.next_item
				end
			end
		end
		if deleted == false && self.tail.key == key then
			self.deleteLast
		end
	end
	
	def deleteFirst
		tmp = self.head
		if self.head == self.tail then
			self.head.next_item = nil
			self.head.previous_item = nil
			self.head = nil
			self.tail = nil
		else
			self.head.next_item.previous_item = nil
			self.head = self.head.next_item
			tmp.next_item = nil
			tmp.previous_item = nil
		end
	end
	
	def deleteLast
		tmp = self.tail
		if self.head == self.tail then
			self.head.next_item = nil
			self.head.previous_item = nil
			self.head = nil
			self.tail = nil
		else
			self.tail.previous_item.next_item = nil
			self.tail = self.tail.previous_item
			tmp.next_item = nil
			tmp.previous_item = nil
		end
	end
	
	def show
		iterator = self.head
		until iterator == self.tail do
			print iterator.key, " "
			iterator = iterator.next_item
		end
		print iterator.key, "\n"
	end
end

dll = DoubleLinkedList.new()
n = STDIN.gets.chomp.to_i

0.upto(n-1) { |i|
	command_line = STDIN.gets.chomp.split (' ')
	
	dll.insert(command_line[1].to_i) if :"#{command_line[0]}" == :insert
	dll.delete(command_line[1].to_i) if :"#{command_line[0]}" == :delete
	dll.deleteFirst if :"#{command_line[0]}" == :deleteFirst
	dll.deleteLast  if :"#{command_line[0]}" == :deleteLast
}

dll.show
