def dfs(n,k,a)
  return nil if n<0
  if k==K.size
    return n.zero? ? a : nil
  end
  c=S[K[k]]
  r1=dfs(n-K[k], k, a+[c])
  r2=dfs(n, k+1, a)
  return r2 unless r1
  return r1 unless r2
  return r1 if r2.size < r1.size
  return r2 if r1.size < r2.size
  r1.sort.reverse.to_s < r2.sort.reverse.to_s ? r2 : r1
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
m=[10,n-1].min
n-=m
r+=K[0]*m
until n.zero?
  n-=1
  r+=K[0]
  ok=dfs(r,0,[])
  next unless ok
  ok.sort!.reverse!
  i=0
  ok.each do |c|
    i+=1 if S[K[0]]<c
  end
  print ok[0...i]*""
  print S[K[0]].to_s*n
  print ok[i..-1]*""
  puts
  exit
end
