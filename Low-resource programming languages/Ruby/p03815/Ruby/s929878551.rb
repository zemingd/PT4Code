q, r = gets.to_i.divmod 11
puts q * 2 + (q.odd? && r > 5 ? 2 : 1)
