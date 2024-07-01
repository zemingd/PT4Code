a,b = gets
n=a.to_i
d=b.to_i
for i in 1..n
  c,d=gets 
  x=c.to_i
  y=d.to_i
  e=x**2 + y**2
  f=Math.sqrt(e)
  num=0
  if d>=f
    num+=1
  end
end
