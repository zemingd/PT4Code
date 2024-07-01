n=gets.to_i
v=gets.split.map(&:to_i)
he=[0]*(10**5+1)
ho=[0]*(10**5+1)
n.times do |i|
  if i.even?
    he[v[i]]+=1
  else
    ho[v[i]]+=1
  end
end
hemv = he.max
homv = ho.max
hemk = he.index(he.max)
homk = ho.index(ho.max)
if hemk == homk
  he[hemk]=0
  ho[homk]=0
  if he==[0]*(10**5+1)
    hhemv=0
  else
    hhemv = he.max
  end
  if ho==[0]*(10**5+1)
    hhomv=0
  else
    hhomv = ho.max
  end
  puts n-[hemv+hhomv,homv+hhemv].max
else
  puts n-hemv-homv
end
