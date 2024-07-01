N = gets.chomp.to_i
A = gets.chomp.to_i

re = N % 500

if A >= re
  print('Yes')
else
  print('No')
end