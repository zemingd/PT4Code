n=gets.chomp.to_i
d=gets.chomp.split(" ").map{|s| s.to_i}.sort

i,j=0,0
t=Array.new(n,0)
while i!=n
  c=0
  while d[j]==i
    j+=1
    c+=1
  end
  t[i]=c
  i+=1
end
#p t
ans=[]
ans[0]=t[0]
for i in 1..n-1
  ans[i]=(t[i-1]**t[i])*ans[i-1] if t[i]!=0
  ans[i]=0 if t[i]==0
end
#p ans
p ans[d.max]
