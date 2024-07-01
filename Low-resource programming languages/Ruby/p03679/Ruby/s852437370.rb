x, a, b = gets.chomp.split.map(&:to_i)
puts (b - a <= 0) ? 'delicious' : (b - a <= x) ? 'safe' : 'dangerous'