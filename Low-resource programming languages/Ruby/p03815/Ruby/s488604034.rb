q, r = gets.to_i.divmod 11
t = q.odd? ? 6 : 5
puts q * 2 + (r > t ? 2 : 1)