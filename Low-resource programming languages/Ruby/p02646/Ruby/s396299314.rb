a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
dist = (b - a).abs
acc = v - w
susumu = acc * t
if dist <= susumu
  puts "YES"
else
  puts "NO"
end
