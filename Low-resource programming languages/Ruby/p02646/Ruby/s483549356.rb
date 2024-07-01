a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v - w <= 0
  puts "NO"
  return
end

x = (a - b) / (w - v).to_f
if x.to_i == x && 0 < x && x <= t
  puts "YES"
else
  puts "NO"
end
