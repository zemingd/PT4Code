W, H, x, y, r = gets.split.map { |i| i.to_i }

s = y - r
t = y + r

o = x - r
p = x + r


if 0 <= o && p <= W || 0 <= s && t <= H
  puts "Yes"
else 0 > o && p >= W || 0 > s && t >= H
  puts "No"
end