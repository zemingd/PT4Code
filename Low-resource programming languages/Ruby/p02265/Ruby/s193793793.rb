list = []
gets.to_i.times{
	command, x = gets.split
	case command
	when 'insert'
		list.unshift x
	when 'delete'
		list.delete x
	when 'deleteFirst'
		list.shift
	when 'deleteLast'
		list.pop
	end
}
puts list * ' '