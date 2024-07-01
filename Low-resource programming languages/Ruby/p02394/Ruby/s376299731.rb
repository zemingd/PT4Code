def incriment(w, h, x, y, r)
	maxw = w - r
	maxh = h - r
	if (maxw >= x && r <= x && maxh >= y && r <= y)
		return 'Yes'
	else
		return 'No'
	end
end

input = gets.chomp
w, h, x, y, r = input.split(' ').map(&:to_i)
puts incriment(w, h, x, y, r)