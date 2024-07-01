x, k, d = gets.split(" ").map(&:to_i)
x = a.abs
if x - d * k <= 0
    ans = x - d * k
else
    k -= x / d
    x -= x / d * d
    x = (x - d).abs if k % 2 == 1
    ans = x
end
puts ans
