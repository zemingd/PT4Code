n= gets &:to_i
xs = gets.split.map &:to_i

min = 10000 * 100

(1..100).each{ |i|
	this = xs.map{ |x| (x - i) ** 2 }.inject(:+)
	if this < min then
		min = this
	end
}

puts min
