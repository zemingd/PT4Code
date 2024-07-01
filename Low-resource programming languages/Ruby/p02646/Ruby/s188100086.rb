a, v = gets.chomp.split.map(&:to_i)
b, w = gets.chomp.split.map(&:to_i)
t = gets.to_i
d = (a - b).abs
if w > v
  puts "NO"
elsif d - t * (v - w) <= 0
  puts "YES"
else
  puts "NO"
end
