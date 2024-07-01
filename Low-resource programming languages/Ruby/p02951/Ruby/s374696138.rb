a, b, c = readline.split(" ").map(&:to_i)

sa = a - b
ans = c - sa
puts ans < 0 ? 0 : ans
