n = gets.to_i
array = gets.split().map(&:to_i)

array_abs = array.map {|a| a.abs}

case array.select {|a| a < 0}.size % 2
when 0
	p array_abs.inject(0) {|sum, a| sum + a}
when 1
	min = array_abs.min
	array_abs.delete(min)
	p array_abs.inject(0) {|sum, a| sum + a} - min
end