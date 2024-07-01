a = gets.split.map(&:to_i)
d = Array.new(3)
for i in 0..2
  d[i] = (a[(i+1)%3] - a[i]).abs
end
d.sort!
puts d[0] + d[1]