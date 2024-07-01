n=gets.chomp.to_i
t=0
a=n
while a!=0 do
  t+=a%10
  a=a/10
end
if n%t==0 then
  puts("Yes")
else
  puts("No")
end
