W, H, N = gets.split.map(&:to_i)
 
x_max = W
x_min = 0
y_max = H
y_min = 0
 
N.times do
	x, y, a = gets.split.map(&:to_i)
	case a
	when 1
		if (x_min < x)
			x_min = x
		end
	when 2
		if (x_max > x)
			x_max = x
		end
	when 3
		if (y_min < y)
			y_min = y
		end
	when 4
		if (y_max > y)
			y_max = y
		end
	end
end
 
area = (x_max - x_min)*(y_max - y_min)
 
if (x_max - x_min) <= 0 or (y_max - y_min) <= 0
	puts 0
else
	puts area
end