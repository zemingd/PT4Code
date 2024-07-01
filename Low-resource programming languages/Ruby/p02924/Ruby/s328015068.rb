n=gets.to_i
s=0
for i in 1..n
  m=(i+n-2)%n+1
  s+=m%i
#  printf("%d %d %d\n",m,i,m%i);
end
p s