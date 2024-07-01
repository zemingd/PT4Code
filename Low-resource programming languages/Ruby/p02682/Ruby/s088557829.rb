A, B, C, K = gets.chomp.split.map(&:to_i)

if A > K || A+B > K
  print A*1
else
  print A*1+(K-(A+B))*(-1)
end