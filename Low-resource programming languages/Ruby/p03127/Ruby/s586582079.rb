n = gets.to_i
as = gets.split.map(&:to_i)

ans = as.inject(0) { |r, a| r.gcd(a) }
puts ans
