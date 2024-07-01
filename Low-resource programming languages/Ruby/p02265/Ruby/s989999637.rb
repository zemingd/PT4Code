list = Array.new

gets.to_i.times {
	d = gets.chomp.split(" ")
	cmd,v = d[0],d[-1]

	case cmd
	when "insert"
		list.unshift(v.to_i)
	when "delete"
		n = list.index(v.to_i)
		list.slice!(n) if not n == nil
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