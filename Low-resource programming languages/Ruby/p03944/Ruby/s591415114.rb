x_max, y_max, n = gets.chomp.split(' ').map(&:to_i)
points = n.times.map{gets.split(' ').map(&:to_i)}
x_min = 0
y_min = 0
(0...n).each do |i|
  if points[i][2] == 1
    x_min = points[i][0] if x_min < points[i][0]
  elsif points[i][2] == 2
    x_max = points[i][0] if x_max > points[i][0]
  elsif points[i][2] == 3
    y_min = points[i][1] if y_min < points[i][1]
  elsif points[i][2] == 4
    y_max = points[i][1] if y_max > points[i][1]
  end
end

puts (x_max - x_min) * (y_max - y_min)