h, w = gets.split.map(&:to_i)
if h == 1 || w == 1
  puts 1
elsif h % 2 == 0
  puts h * w / 2
else
  puts (h - 1) * w / 2 + (w + 1) / 2
end