n = gets.to_i
a = gets.split.map(&:to_i)
if n == 2
  puts (a[0] - a[1]).abs
  exit
end
total = a.sum
y = a[0]
z = (total - y).abs
(1..n - 2).each do |i|
  y += a[i]
  b = total - y
  z = [(y - b).abs, z].min
end
puts z