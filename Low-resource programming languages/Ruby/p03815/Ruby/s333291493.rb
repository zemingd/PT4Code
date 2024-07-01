q, r = gets.to_i.divmod 11
t = q.odd? ? 5 : 6
puts q * 2 + (r > t ? 2 : 1)
