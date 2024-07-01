n = gets.to_i
a = gets.split.map(&:to_i)
g = a[0]
for i in 1..n-1
    g = g.gcd(a[i])
end
puts g