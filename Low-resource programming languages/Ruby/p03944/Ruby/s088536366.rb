W, H, N = gets.split.map(&:to_i)
 
x_max = W
x_min = 0
y_max = H
y_min = 0
 
N.times do
	x, y, a = gets.split.map(&:to_i)
	case a
	when 1
		x_min = [x_min,x].max
	when 2
		x_max = [x_max,x].min
	when 3
		y_min = [y_min,y].max
	when 4
		y_max = [y_max,y].min
	end
end
 
area = (x_max - x_min)*(y_max - y_min)
 
if (x_max - x_min) <= 0 or (y_max - y_min) <= 0
	puts 0
else
	puts area
end