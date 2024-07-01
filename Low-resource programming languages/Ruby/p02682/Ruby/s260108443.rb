a, b, c, k = readline.split.map(&:to_i)

r = 0

r = k >= a ? a : k

r -= k - a - b if 0 < k - a - b

puts r
