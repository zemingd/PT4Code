k = gets.to_i
a, b = gets.chomp.split.map(&:to_i)
puts (a / k * k <= b && b / k * k >= a)? "OK" : "NG"