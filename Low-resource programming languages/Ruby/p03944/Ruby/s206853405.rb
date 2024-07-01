W, H, N = gets.split.map(&:to_i)

x_max = W
x_min = 0
y_max = H
y_min = 0

x, y, a = Array.new(N)
N.times do |num|
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
		x_max = x
	when 3
		if (y_min > y)
			y_min = y
		end
		y_min = y
	when 4
		if (y_max > x)
			y_max = x
		end
		y_max = y
	end
end

area = (x_max - x_min)*(y_max - y_min)

if area <= 0
	puts 0
else
	puts area
end
