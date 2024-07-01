def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

eof = false

until eof do
	m,f,r = array_integer(STDIN.gets.split(" "))
	add = m + f
	
	if m == -1 && f == -1 && r == -1 then
		eof = true
		break
	elsif m == -1 || f == -1 then
		print "F\n"
	elsif add >= 80 then
		print "A\n"
	elsif add >= 65 then
		print "B\n"
	elsif add >= 50 then
		print "C\n"
	elsif add >= 30 then
		if r >= 50 then
			print "C\n"
		else
			print "D\n"
		end
	else
		print "F\n"
	end
end

