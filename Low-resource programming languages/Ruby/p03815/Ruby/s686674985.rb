q, r = gets.to_i.divmod 11
puts q * 2 + (r == 0 ? 0 : r > 6 ? 2 : 1)