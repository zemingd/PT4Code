a, b, c, k = gets.chomp.split(" ").map {|v| v.to_i}
ans = 0
ans += (k > a)? a * 1: k * 1
k -= a
k -= b
ans -= (k > 0)? k * 1: 0
puts ans