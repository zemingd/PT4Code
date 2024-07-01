N,M,C=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)
ans=0
N.times do
  ai=gets.split.map(&:to_i)
  v=0
  M.times{|i| v+=ai[i]*bs[i]}
  ans+=1 if v+C>0
end
puts ans
