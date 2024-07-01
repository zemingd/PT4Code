n, x = gets.split.map(&:to_i) 

arr = []
n.times {
	arr << gets.chomp.to_i
}

i  = (x - arr.inject {|sum, n| sum + n })/arr.min
puts arr.size+i