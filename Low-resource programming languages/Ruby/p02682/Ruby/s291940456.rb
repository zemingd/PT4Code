a, b, c, k = gets.split.map(&:to_i)
ans = 0
ans += [a, k].min
k -= [a, k].min
k -= [b, k].min
ans -= [c, k].min
puts ans
