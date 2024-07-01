n=gets.to_i
v=gets.split.map &:to_i
x=v.max
c1,c2=Array.new(x+1,0),Array.new(x+1,0)
n.times do|i|
  p c1,c2
  if i%2==1
    if c1[v[i]]==0
      c1[v[i]]=1
    else
      c1[v[i]]+=1
    end
  else
    if c2[v[i]]==0
      c2[v[i]]=1
    else
      c2[v[i]]+=1
    end
  end
end
c1.delete(0)
c2.delete(0)
a1= c1.size==1 ? 0 : c1.min
a2= c2.size==1&&v[0]!=v[1] ? 0 : c2.min
puts a1+a2
