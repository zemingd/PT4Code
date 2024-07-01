def abc
	n = gets.to_i
	a = []
	5.times do |i|
		a[i] = gets.to_i
	end
	m, index = a.each_with_index.min
	n / m + 5
end

p abc
