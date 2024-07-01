a, b, c, k = readline.split.map(&:to_i)

r = 0

r = a > k ? k : a

r -= k - a - b if c > k - a - b

puts r
