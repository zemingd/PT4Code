a,b = gets.split.map(&:to_i)
p b != 100 ? b * 100 ** a : b * 100 ** a / 100
