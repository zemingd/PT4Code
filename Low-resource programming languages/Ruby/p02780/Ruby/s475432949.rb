
n,k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

m = []

(0..n - 1).each do |i|
    sum = 0.0
    sum += p[i] * (p[i] + 1) / 2
    sum /= p[i]
    m << sum.to_f
end
l = 0.0
(0..k - 1).each do |i|
    l += m[i]
end

ans = l
(k..n - 1).each do |i|
    l -= m[i - k]
    l += m[i]
    ans = ans > l ? ans : l
end
puts ans.to_f
    