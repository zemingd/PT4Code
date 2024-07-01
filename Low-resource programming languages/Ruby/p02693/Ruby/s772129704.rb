k = gets.chomp.to_i
a, b = gets.chomp.split.map(&:to_i)
puts (b / k) * k >= a ? 'OK' : 'NG'