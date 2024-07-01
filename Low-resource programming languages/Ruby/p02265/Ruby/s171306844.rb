list = Array.new

gets.to_i.times {
	d = gets.chomp.split(" ")
	cmd,v = d[0],d[-1]

	case cmd
	when "insert"
		list.unshift(v)
	when "delete"
		list.slice!(list.index(v))
	when "deleteFirst"
		list.slice!(0)
	when "deleteLast"
		list.slice!(-1)
	end
}

list.length.times { |i|
	print " " if not i == 0
	print list[i]
}
puts