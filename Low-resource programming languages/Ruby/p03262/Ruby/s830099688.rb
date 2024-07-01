n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
d = (a[0] - x).abs
for i in 0...n do
  d = d.gcd((a[i] - x).abs)
end
puts d
