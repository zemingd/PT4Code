n = gets.to_i
s = gets.split(" ").map{|v|v.to_i}
c = 0
s.each{|v|
	while v % 2 == 0
		v /= 2
		c += 1
	end
}
puts c