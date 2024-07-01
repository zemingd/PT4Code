n = gets.to_i
list = Array.new(n, nil)
first = 0
last = -1

n.times {
	d = gets.chomp.split(" ")
	cmd,v = d[0],d[-1]

	case cmd
	when "insert"
		last += 1
		list[last] = v.to_i
	when "delete"
		v = v.to_i
		last.downto(first) { |i|
			if list[i] == v
				list[i] = nil
				first += 1 if i == first
				last  -= 1 if i == last
				break
			end
		}
	when "deleteFirst"
		list[last] = nil
		last -= 1
	when "deleteLast"
		list[first] = nil
		first += 1
	end
}
list = list[first..last].compact.reverse!

list.length.times { |i|
	print " " if not i == 0
	print list[i]
}
puts