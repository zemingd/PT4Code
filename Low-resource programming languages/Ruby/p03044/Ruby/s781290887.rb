n=gets.to_i
l=[]
n.times do
  l << []
end
(n-1).times do
  u,v,w=gets.split.map(&:to_i)
  l[u-1] << [v-1,w]
  l[v-1] << [u-1,w]
end
c=[0]+[nil]*(n-1)
n-=1
s=[[0,0]]
while n>0
  z=[]
  s.each do |ss,sc|
    l[ss].each do |lss,w|
      if c[lss]==nil
        c[lss]=(sc+w)%2
        z << [lss,sc+w]
        n-=1
      end
    end
  end
  s=z.dup
end
puts c
