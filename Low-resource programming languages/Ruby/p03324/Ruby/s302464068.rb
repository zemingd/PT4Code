d,n=gets.split.map &:to_i
a=100**d;
b=100**(d+1);
res=0;

loop do
  res+=a
  n-=1 if(res%b != 0)
  break if n==0
end
p res