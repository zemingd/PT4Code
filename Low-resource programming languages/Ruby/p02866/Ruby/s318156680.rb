n=gets.chomp.to_i
d=gets.chomp.split(" ").map{|s| s.to_i}.sort

if d[0]!=0
  puts 0
  exit
end


i,j=0,0
t=Array.new(n,0)
while i!=n-1
  c=0
  while d[j]==i
    j+=1
    c+=1
  end
  t[i]=c
  i+=1
end
ans=[]
ans[0]=t[0]
for i in 1..n-1
  ans[i]=(t[i-1]**t[i])*ans[i-1]
end
p ans[d.max]
