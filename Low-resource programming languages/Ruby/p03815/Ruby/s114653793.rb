a = gets.chomp.to_i
i = 0
cnt = 0
if a % 11 >=7
  puts a / 11 * 2 + 2
else
  puts a / 11 * 2 +1
end