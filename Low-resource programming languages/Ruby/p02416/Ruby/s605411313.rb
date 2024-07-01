def array_integer(a)
	0.upto(a.count - 1) {|x|
		a[x] = a[x].to_i if a[x] != "\n"
	}
	return a
end

eof = false



until eof do 
	num_array = array_integer(STDIN.gets.chomp!.split(""))
	
	if num_array.length == 1 && num_array[0] == 0 then
		eof = true
		break
	end
	
	sum = 0
	num_array.each {|i|
			sum += i
	}
	print sum, "\n"
end

