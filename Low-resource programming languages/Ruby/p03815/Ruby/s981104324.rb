a = gets.chomp.to_i
i = 0
cnt = 0
if a % 11 >= 7
  puts a / 11 * 2 + 2
elsif a % 11 <= 6 && a % 11 != 0
  puts a / 11 * 2 +1
else
  puts a /11 * 2
end