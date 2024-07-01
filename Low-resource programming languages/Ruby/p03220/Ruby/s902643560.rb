n = gets.split.map &:to_i
t,a = gets.split.map &:to_f
h = gets.split.map &:to_i

min = Float::INFINITY
index = nil

h.each_with_index{ |x, i|
	temp = (a - (t - 0.006 * x)).abs 

	if min > temp then
		min = temp
		index = i + 1
	end
}

puts index
