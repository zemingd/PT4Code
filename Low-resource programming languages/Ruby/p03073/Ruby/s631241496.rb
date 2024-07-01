s=gets.chomp.split("").map &:to_i
sum1=0
sum2=0
for i in 0...s.size
  a=i%2
  sum1+=1 if s[i]!=a
end
ans=sum1
for i in 0...s.size
  a=(i+1)%2
  sum2+=1 if s[i]!=a
end
puts [ans,sum2].min
