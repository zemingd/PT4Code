a = gets.split(' ').map(&:to_i)
b = a[1] - a[2] - a[0]
puts b > 0 ? b : 0