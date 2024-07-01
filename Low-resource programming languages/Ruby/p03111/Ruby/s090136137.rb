def mp(a,n)
  10*(a.size-1) + (a.inject(:+)-n).abs
end
def calc(a,b,c)
  mp(a,A)+mp(b,B)+mp(c,C)
end
def dfs(a,b,c,i)
  return (a.empty? || b.empty? || c.empty?) ? 10**10 : calc(a,b,c) if i==N
  [dfs(a,b,c,i+1),dfs(a+[L[i]],b,c,i+1), dfs(a,b+[L[i]],c,i+1),dfs(a,b,c+[L[i]],i+1)].min
end
N,A,B,C=gets.split.map(&:to_i)
L=N.times.map{gets.to_i}
p dfs([],[],[],0)