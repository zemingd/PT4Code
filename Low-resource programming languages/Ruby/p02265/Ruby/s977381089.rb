n = gets.to_i

ret_arr = []
n.times do
	command = gets.split
	case command[0]
	when "insert"
		num = command[1].to_i
		ret_arr.unshift(num)
	when "delete"
		num = command[1].to_i
		index = ret_arr.find_index {|val| val == num}
		if index != nil
			ret_arr.delete_at(index)
		end
	when "deleteFirst"
		ret_arr.shift
	when "deleteLast"
		ret_arr.pop
	end
end

puts ret_arr.join(" ")