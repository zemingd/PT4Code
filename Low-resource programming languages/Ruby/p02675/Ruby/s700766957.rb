n = gets.to_i
x = n.to_s.split("").last.to_i

if x == 2 || x == 4 || x == 5 || x == 7 || x == 9
  puts 'hon'
elsif x == 0 || x == 1 || x == 6 || x == 8
  puts 'pon'
else puts 'bon'
end