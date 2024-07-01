N=gets.to_i
a = gets.chomp.split.map(&:to_i)
p=[-1,a[0],0]
s=1
i=1
while i < N &&(s==1)
 if a[i]==0
    s=1
    p[1]=0
 end
p[1]=p[1]*a[i]
  if p[1]>10**18
     s=0
  end
i=i+1
end
puts p[s]