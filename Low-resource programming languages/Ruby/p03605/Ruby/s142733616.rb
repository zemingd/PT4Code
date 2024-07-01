N = gets.to_i
a = N/10
b = N%10
if(a == 9 || b == 9)
  puts("yes")
else
  puts("no")
end