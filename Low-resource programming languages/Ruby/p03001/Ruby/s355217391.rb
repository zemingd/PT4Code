W, H, x, y = gets.split.map(&:to_i)
puts (W * H) / 2.0
if x * 2 == W && y * 2 == H
  puts 1
else
  puts 0
end