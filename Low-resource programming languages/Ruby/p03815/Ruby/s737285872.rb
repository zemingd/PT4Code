x = gets.to_i
q, r = x.divmod(11)
puts q * 2 + (r > 6 ? 2 : 1)
