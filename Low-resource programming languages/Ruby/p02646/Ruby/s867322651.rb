a, v = gets.split(" ").map(&:to_i)
b, w = gets.split(" ").map(&:to_i)
t = gets.chomp.to_i

d = (a - b).abs

if v * t - w * t >= d
  puts "YES"
else
  puts "NO"
end
