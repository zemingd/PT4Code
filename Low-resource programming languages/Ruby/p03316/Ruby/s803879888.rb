N=gets.strip.to_i
n=N
t=0
while n>0
  t+=n%10
  n/=10
end
if N%t==0
  puts 'Yes'
else
  puts 'No'
end