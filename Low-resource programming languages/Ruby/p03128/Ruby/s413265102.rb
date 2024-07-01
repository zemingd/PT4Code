def dfs(n,k,s)
  return nil if n<0
  if k==K.size
    return n.zero? ? s : nil
  end
  c=S[K[k]]
  res=dfs(n-K[k], k, s+[c])
  return res if res
  dfs(n, k+1, s)
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
