io = STDIN
n,m,k=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
br=io.gets.split.map(&:to_i)
cuma=Array.new(n+1,0)
cumb=Array.new(m+1,0)
n.times do |i|
  cuma[i+1]+=cuma[i]+ar[i]
end
m.times do |j|
  cumb[j+1]+=cumb[j]+br[j]
end
ans=0
(n+1).times do |i|
  next if cuma[i]>k
  j=cumb.bsearch_index{|cumbj|cuma[i]+cumbj>k} #より大きいものを求める
  if j  #jの1つ手前がmaxのindex
    ans = [ans,i+j-1].max
  else   #大きなものがない⇒itemのmaxでも範囲内
    ans = [ans,i+m].max
  end
end 
puts ans 
