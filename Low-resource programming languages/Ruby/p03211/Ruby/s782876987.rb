s=gets
ans=999
for i in 0..s.length-2 do
  a=s[i].to_i
  b=s[i+1].to_i
  c=s[i+2].to_i
  ans=[ans,754-a*100+b*10+c.abs].min
  end
puts(ans)
