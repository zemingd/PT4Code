def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

eof = false

until eof do
	h,w = array_integer(STDIN.gets.split(" "))
	
	if h == 0 && w == 0 then
		return
	end

	1.upto(h) {
		1.upto(w) {
			print "#"
		}
		print "\n"
	}

	print "\n"
end

