H, W = gets.split.map &:to_i
if h == 1 || w == 1
  puts 1
else
  puts (H * W / 2.0 ).ceil