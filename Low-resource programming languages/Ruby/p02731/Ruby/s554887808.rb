n=gets.to_i
ans=0
if n%3==0
  ans=(n/3)**3
elsif n%3==1
  x=(n/3).to_i
  y=x
  x+=0.33
  y+=0.34
  ans=x*x*y
else
  x=(n/3).to_i
  y=x
  x+=0.34
  y+=0.33
  ans=x*y*y
end
puts ans
