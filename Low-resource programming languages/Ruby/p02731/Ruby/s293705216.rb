n=gets.to_i
ans=0
if n%3==0 || n==1 || n==2
  ans=(n/3)**3
elsif n%3==1
  x=(n/3).to_i
  y=x+1
  ans=x*x*y
else
  x=(n/3).to_i
  y=x+1
  ans=x*y*y
end
puts ans
