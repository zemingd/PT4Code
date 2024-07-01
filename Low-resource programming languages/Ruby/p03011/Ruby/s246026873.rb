p, q, r = gets.split.map(&:to_i)
sum = []
sum << p + q
sum << q * r
sum << r + p
puts sum.min