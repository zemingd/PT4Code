a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if (v <= w)
  puts "NO"
  exit
end
d = (b - a).abs
e = v - w
if (d / e <= t)
  puts "YES"
else
  puts "NO"
end