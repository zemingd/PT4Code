n=gets.to_i
hs=gets.split.map(&:to_i)
ans=0
n.times do |i|
  if i==0
    ans+=1
  else
    cur=hs[i]
    ans+=1 if hs[0..i-1].all?{|hi| hi<=cur}
  end
end
puts ans
