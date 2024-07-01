n,q=gets.split.map &:to_i
s=gets.chomp
ans=[]
sum=0
for i in 0..s.size-2
  if s[i]=="A"
    if s[i+1]=="C"
      ans << sum+=1
      next
    end
  end
  ans << sum
end
p ans.zip(0..7).to_a
x=[]
y=[]
q.times do |i|
  x[i],y[i]=gets.split.map &:to_i
end
q.times do |j|
  puts ans[y[j]-2]-ans[x[j]-1]==0 ? 0:ans[y[j]-2]-ans[x[j]-1]+1
end
