n=gets.to_i
ans,i=0,1
while i<=n
  c=0
  (1..i).each{|j|c+=1 if i%j==0}
  ans+=1 if c==8
  i+=2
end
p ans
