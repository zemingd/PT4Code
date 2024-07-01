n=gets.to_i
h=gets.chomp.split.map(&:to_i)
h.reverse!
ans=[]
tmp=0
for i in 0..n-2
  if h[i]<=h[i+1]
    tmp+=1
  else
    ans.push(tmp)
    tmp=0
  end
end
puts ans.max