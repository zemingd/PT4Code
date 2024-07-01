1.upto(gets.to_i){|x|
	print " #{x}" if x % 3 == 0 || x.to_s.include?("3")
}
puts