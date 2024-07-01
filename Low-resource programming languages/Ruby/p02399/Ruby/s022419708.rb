a, b = gets.split.map(&:to_i)
d = a / b
r = a % b
f = a / b.to_f
puts sprintf("%d %d %.8f", d, r, f)