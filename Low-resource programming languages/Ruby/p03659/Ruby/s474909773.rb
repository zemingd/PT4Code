n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
sum = a.inject(:+)
x = a[0]
y = sum - a[0]
min = (x-y).abs
(n-2).times do |i|
  x += a[i+1]
  y -= a[i+1]
  min = (x-y).abs if min > (x-y).abs
end
puts min