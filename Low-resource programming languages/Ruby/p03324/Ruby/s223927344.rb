a,b = gets.split.map(&:to_i)
p a != 100 ? b * 100 ** a : b * 100 ** a / 100