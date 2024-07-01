a, b = gets.split.map(&:to_i)
p a >= 13 ? b : a >=6 && a<=12 ? b/2 : 0