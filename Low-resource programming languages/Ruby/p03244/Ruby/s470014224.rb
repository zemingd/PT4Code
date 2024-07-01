n=gets.to_i
v=gets.split.map &:to_i
x=v.max
c1,c2={},{}
n.times do|i|
  p c1,c2
  if i%2==1
    if c1[v[i]]==nil
      c1[v[i]]=1
    else
      c1[v[i]]+=1
    end
  else
    if c2[v[i]]==nil
      c2[v[i]]=1
    else
      c2[v[i]]+=1
    end
  end
end
min1,min2=1000000,1000000
c1.each{|k,vl|min1>vl&&min1=vl}
c1.each{|k,vl|min2>vl&&min2=vl}
a1= c1.size==1 ? 0 : min1
a2= c2.size==1&&v[0]!=v[1] ? 0 : min2
puts a1+a2
