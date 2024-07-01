class DoublyLinkedList
	class Cell
		attr_accessor :data, :prev_data, :next_data
		def initialize(data, prev_data = nil, next_data = nil)
			@data = data
			@prev_data = prev_data
			@next_data = next_data
		end
	end
	
	def initialize
		@top_data = nil
		@last_data = @top_data
	end
	
	def insert(x)
		cell = Cell.new(x)
		if @top_data == nil
			@top_data = cell
			@last_data = cell
		else
			cell.next_data = @top_data
			@top_data.prev_data = cell
			@top_data = cell
		end
	end
	
	def delete(x)
		cell = @top_data
		while cell.data != x
			cell = cell.next_data
			if cell == nil
				return
			end
		end
		if cell.prev_data != nil
			cell.prev_data.next_data = cell.next_data
		elsif cell == @top_data
			cell.next_data.prev_data = nil
			@top_data = cell.next_data
		end
		if cell.next_data!= nil
			cell.next_data.prev_data = cell.prev_data
		elsif cell == @last_data
			cell.prev_data.next_data = nil
			@last_data = cell.prev_data
		end
	end
	
	def delete_first
		if @top_data.next_data != nil
			@top_data.next_data.prev_data = nil
			@top_data = @top_data.next_data
		else
			@top_data = nil
			@last_data = nil
		end
	end
	
	def delete_Last
		if @last_data.prev_data != nil
			@last_data.prev_data.next_data = nil
			@last_data = @last_data.prev_data
		else
			@top_data = nil
			@last_data = nil
		end
	end
	
	def data_print
		cell = @top_data
		print cell.data
		while cell.next_data != nil
			cell = cell.next_data
			print " ",cell.data
		end
		puts
	end
end

n = gets.chomp.to_i

list = DoublyLinkedList.new

n.times {
	cmd = gets.chomp.split(" ")
	case cmd[0]
	when "insert"
		list.insert(cmd[1])
	when "delete"
		list.delete(cmd[1])
	when "deleteFirst"
		list.delete_first
	when "deleteLast"
		list.delete_Last
	end
}
list.data_print