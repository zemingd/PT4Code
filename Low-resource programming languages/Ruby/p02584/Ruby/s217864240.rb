x, k, d = gets.split(" ").map(&:to_i)
x = x.abs
if x - d * k > 0
    ans = x - d * k
else
    k -= x / d
    x -= x / d * d
    x = (x - d) if k % 2 == 1
    ans = x.abs
end
puts ans
