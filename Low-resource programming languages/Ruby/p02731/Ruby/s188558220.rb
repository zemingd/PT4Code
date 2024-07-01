n=gets.to_i
ans=0
if n%3==0
  ans=(n/3)**3
elsif n%3==1
  x=(n/3).to_i
  y=x
  x+=0.000000000003
  y+=0.000000000004
  ans=x*x*y
else
  x=(n/3).to_i
  y=x+1
  x+=0.000000000003
  y+=0.000000000004
  ans=x*y*y
end
puts ans
