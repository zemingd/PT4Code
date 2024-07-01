a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v - w <= 0
  puts "NO"
  return
end

x = (b - a) / (v - w)
if x.to_s =~ /^[0-9]+$/
  puts x <= t ? "YES" : "NO"
else
  puts "NO"
end
