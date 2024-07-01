n = gets.to_i
case n % 10
when 2, 4, 5, 7, 9
  puts "hon"
when 0, 1, 6, 8
  puts "pon"
else
  puts "bon"
end
