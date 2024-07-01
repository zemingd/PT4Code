a, b, c, K = gets.split.map(&:to_i)
k = K
sum = 0

if a > K then
    sum = K
else
    k -= a
    sum += a * 1
    if k > 0 then
        k -= b
        k = 0 if k <= 0
    end
    if k > 0 then
        sum += k * -1
    end
end

puts sum
