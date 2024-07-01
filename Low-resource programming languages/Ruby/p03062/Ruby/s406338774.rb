n = gets.to_i
array = gets.split().map(&:to_i)

array_abs = array.map(&:abs)

case array.select {|a| a < 0}.size % 2
when 0
	p array_abs.inject(:+)
when 1
	min, *array_abs = array_abs.sort
	p array_abs.inject(:+) - min
end