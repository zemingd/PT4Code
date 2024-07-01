s=gets
i=0
checkA=false
a=z=0
s.each_char do|c|
  if c=="A"&&!checkA then a=i; checkA=true end
  if c=="Z" then z=i; break end
  i+=1
end
p z-a+1
