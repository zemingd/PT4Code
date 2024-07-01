n=gets.to_i
v=gets.split.map(&:to_i)
he,ho={},{}
n.times do |i|
  if i.even?
    if !he.has_key?(v[i])
      he[v[i]]=1
    else
      he[v[i]]+=1
    end
  else
    if !ho.has_key?(v[i])
      ho[v[i]]=1
    else
      ho[v[i]]+=1
    end
  end
end
hemk, hemv = he.max{|x,y| x[1] <=> y[1]}
homk, homv = ho.max{|x,y| x[1] <=> y[1]}
if hemk == homk
  he.delete(hemk)
  ho.delete(homk)
  if he=={}
    hhemv=0
  else
    hhemk, hhemv = he.max{|x,y| x[1] <=> y[1]}
  end
  if ho=={}
    hhomv=0
  else
    hhomk, hhomv = ho.max{|x,y| x[1] <=> y[1]}
  end
  puts n-[hemv+hhomv,homv+hhemv].max
else
  puts n-hemv-homv
end
