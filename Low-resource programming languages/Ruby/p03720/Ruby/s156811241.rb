n,m=gets.split.map(&:to_i)
rd=[]
i=1#iが都市
j=0
while line= gets
  rd<< line.split.map(&:to_i)
end
while i<=n
  num=0
  while j<m
    if rd[j][0]==i or rd[j][1]==i
      num+=1
    end
    j+=1
  end
  puts num
  i+=1
  j=0
end