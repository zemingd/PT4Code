x = gets.to_i
q = x.div(11)
r = x % 11

t = (r <= 6) ? 2 * q + 1 : 2 * q + 2

puts t