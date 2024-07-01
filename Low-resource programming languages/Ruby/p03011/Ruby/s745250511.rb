a = gets.split(' ').map(&:to_i)
a = a.sort
puts a[0] + a[1]