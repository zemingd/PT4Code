def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

a,b,c = array_integer(STDIN.gets.split(" "))
divisor_count = 0
a.upto(b) {|x|
	if (c % x) == 0 then
		divisor_count += 1
	end
}

puts divisor_count

