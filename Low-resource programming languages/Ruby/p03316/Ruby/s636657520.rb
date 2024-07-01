num=gets.chomp.to_i
n1=num
n2=0
n3=0
while n1 > 10 do
  n2=n1%10
  n3+=n2
  n1/=10
end
n3+=n1
if num%n3==0 then
  puts "yes"
else
  puts "no"
end