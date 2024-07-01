n=gets.to_i
ps=gets.split.map(&:to_i)
ans=0
1.upto(n-2) do |i|
  ans+=1 if (ps[i-1]<ps[i] && ps[i]<ps[i+1]) || (ps[i+1]<ps[i] && ps[i]<ps[i-1])
end
puts ans
