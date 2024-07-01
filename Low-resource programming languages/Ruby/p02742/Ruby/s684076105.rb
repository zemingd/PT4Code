h,w = gets.chomp.split(' ').map(&:to_i)
if h % 2 == 0
  puts h * w / 2
elsif w % 2 == 0
  puts h * w / 2
else
  puts h * ((w / 2) - 1) + (h - 1) / 2
end