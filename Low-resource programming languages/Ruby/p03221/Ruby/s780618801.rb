py=[]
n,m=gets.split.map(&:to_i)
m.times{|i|py << gets.split.map(&:to_i)}
pre=0
id=1
py.sort.each{|city|
  if city[0]==pre
    id+=1
    city[1]=id
  else
    city[1]=1
    id=1
    pre=city[0]
  end
}
py.each{|p,y|
  printf("%06d%06d\n",p,y)
}
