def dfs(n,k,a)
  return [0] if n<0
  return (n.zero? ? a : [0]) if k==K.size
  r1=dfs(n-K[k], k, a+[S[K[k]]]).sort.reverse
  r2=dfs(n, k+1, a).sort.reverse
  return r2 if r1.size < r2.size
  return r1 if r2.size < r1.size
  r1.to_s<r2.to_s ? r2 : r1
end

B=[0,2,5,5,4,5,6,3,7,6]

N,M=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)

S=Hash.new{|h,k|h[k]=0}
A.each do |a|
  S[B[a]]=[S[B[a]],a].max
end
K=S.keys.sort

n,r=N.divmod(K[0])
m=[12,n-1].min
n-=m
r+=K[0]*m
f=l=""
dfs(r,0,[]).each do |c|
  S[K[0]]<c ? f+=c.to_s : l+=c.to_s
end
puts f + S[K[0]].to_s*n + l
