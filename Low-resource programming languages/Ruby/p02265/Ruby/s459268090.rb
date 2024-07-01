list = []
gets.to_i.times{
	command, x = gets.split
	case command
	when 'insert'
		list.unshift x
	when 'delete'
		index = list.index(x)
		list.delete_at index if index
	when 'deleteFirst'
		list.shift
	when 'deleteLast'
		list.pop
	end
}
puts list * ' '