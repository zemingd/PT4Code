a, v = gets.strip.split.map(&:to_i)
b, w = gets.strip.split.map(&:to_i)
t = gets.strip.split.map(&:to_i).first

if (a + v * t) >= (b + w * t)
  puts "YES"
else
  puts "NO"
end