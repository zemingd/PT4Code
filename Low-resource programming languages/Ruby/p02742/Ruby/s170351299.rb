h, w = gets.chomp.split.map(&:to_i)
if (h * w) % 2 == 0 
  puts h * w / 2
else
  puts h * w / 2 + 1
end