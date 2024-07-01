N = gets.to_i
a = N/10
b = N%10
if(a == 9 || b == 9)
  puts("Yes")
else
  puts("No")
end