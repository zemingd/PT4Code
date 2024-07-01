n=gets.to_i
ans=0
if n%3==0
  ans=(n/3)**3
elsif n%3==1
  x=(n/3).to_i
  y=x
  x+=0.333
  y+=0.334
  ans=x*x*y
else
  x=(n/3).to_i
  y=x
  x+=0.334
  y+=0.333
  ans=x*y*y
end
puts ans
