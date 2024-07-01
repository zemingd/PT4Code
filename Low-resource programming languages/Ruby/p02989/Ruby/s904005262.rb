n = gets.chomp.to_i
points = gets.chomp.split(' ').map(&:to_i).sort
 
center1, center2 = points[n / 2 - 1], points[n / 2]
puts center2 - center1