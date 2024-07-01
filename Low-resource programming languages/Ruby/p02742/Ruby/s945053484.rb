h,w = gets.chomp.split(' ').map(&:to_i)
if h % 2 == 0 || w % 2 == 0
  puts h * w / 2
else
  puts ((h + 1) / 2) * ((w + 1) / 2) + (((h + 1) / 2) - 1) * (((w + 1) / 2) - 1)
end