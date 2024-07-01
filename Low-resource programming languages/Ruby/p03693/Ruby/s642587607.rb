num = gets.chomp.gsub(" ", "").to_i
flag = num % 4

if flag == 0
  print('YES')
else
  print('NO')
end
