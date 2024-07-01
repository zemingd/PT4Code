A,B = gets.split.map(&:to_i)
if A*B*1 % 2 == 1 || A*B*3 % 2 == 1
 puts("Yes")
 else puts("No")
end