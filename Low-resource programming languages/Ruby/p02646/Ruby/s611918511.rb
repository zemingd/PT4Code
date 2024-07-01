a, v = gets.split.map &:to_i
b, w = gets.split.map &:to_i
t = gets.to_i

able = true
if a < b
  able = a + v * t >= b + w * t
elsif a > b
  able = a + v * t <= b + w * t
else
  able = true
end

if able
  puts "YES"
else
  puts "NO"
end