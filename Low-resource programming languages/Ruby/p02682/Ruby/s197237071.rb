a, b, c, k = gets.split.map(&:to_i)
ans = k
if k > a
    k -= a + b
    ans -= k if k > 0
end
puts ans