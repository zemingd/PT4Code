n = gets.to_i
xs = gets.split.map &:to_i

xs_sort = xs.sort
l = xs_sort[n / 2]
s = xs_sort[n / 2 - 1]

if s == l then
	n.times{
		puts l
	}
else
	xs.each{ |x|
		if s < x then
			puts s
		else
			puts l
		end
	}
end
