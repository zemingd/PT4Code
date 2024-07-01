a, b, c, k = gets.split(" ").map(&:to_i)
ans = [a, k].min
k -= a if k > a
k -= b if k > 0
ans -= [k, c].min if k > 0
puts ans
