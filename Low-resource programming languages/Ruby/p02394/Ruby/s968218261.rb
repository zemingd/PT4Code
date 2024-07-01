W, H, x, y, r = gets.split.map { |i| i.to_i }

s = x - r
t = x + r

if 0 <= s && t <= W
  puts "Yes"
else 0 > s && t >= W
  puts "No"
end