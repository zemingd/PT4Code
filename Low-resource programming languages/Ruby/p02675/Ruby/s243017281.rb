N = gets.chomp.to_i
M = N % 10
case M
when 0 || 1 || 6 || 8
  puts "pon"
when 2 || 4 || 5 || 7 || 9
  puts "hon"
when 3
  puts "bon"
else
end