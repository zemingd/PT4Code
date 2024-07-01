n = gets.to_i
n %= 10
if n == 3
  puts "bon"
elsif n == 0 || n == 1 || n == 6 || n == 8
  puts "pon"
else
  puts "hon"
end