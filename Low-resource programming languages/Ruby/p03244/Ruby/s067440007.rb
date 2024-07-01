n=gets.to_i
v=gets.split.map &:to_i
x=v.max
c1,c2,c3,c4=Array.new(x+1,1000000),Array.new(x+1,1000000),0,0
n.times do|i|
  if i%2==1
    if c1[v[i]]==1000000
      c1[v[i]]=1
      c3+=1
    else
      c1[v[i]]+=1
    end
  else
    if c2[v[i]]==1000000
      c2[v[i]]=1
      c4+=1
    else
      c2[v[i]]+=1
    end
  end
end
a1= c3==1 ? 0 : c1.min
a2= c4==1&&v[0]!=v[1] ? 0 : c2.min
puts a1+a2
