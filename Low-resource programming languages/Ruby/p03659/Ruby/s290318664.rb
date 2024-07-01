n = gets.to_i
a = gets.split.map(&:to_i)
x = [a[0]]
(1..n-1).each do |i|
  x << x[i-1] + a[i]
end
a.reverse!
y = [a[0]]
(1..n-1).each do |i|
  y << y[i-1] + a[i]
end
x.pop
y.pop
y.reverse!
min = 10**5
(n-1).times do |i|
  min = [min, (x[i]-y[i]).abs].min
end
puts min