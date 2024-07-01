n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
y = []
for i in 0..a.length-1
y << (x - a[i]).abs
end
m = []
for i in 0..y.length-2
    m << y[i].gcd(y[i+1])
end
puts m.min