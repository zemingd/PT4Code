def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

n = STDIN.gets
n = n.to_i

a = array_integer(STDIN.gets.split(" "))

(n-1).downto(0) {|i|
	print a[i]
	if i != 0 then
		print " "
	else
		print "\n"
	end
}

