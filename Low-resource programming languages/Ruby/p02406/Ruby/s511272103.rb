def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

n = STDIN.gets
n = n.to_i

1.upto(n) {|i|
	if i % 3 == 0 then
 		print " ", i
 		next
 	end

    tmp = i
 	while tmp > 0 do
 		if tmp % 10 == 3 then
 			print " ", i
 			break
 		end
 		tmp /= 10
 	end
}

print "\n"
