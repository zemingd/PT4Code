c=[0,2,5,5,4,5,6,3,7,6]
N,M=gets.split.map &:to_i
A=gets.split.map &:to_i
d=Array.new(N+1,p)
d[0]=0
0.upto(N){|i|q=A.map{|x|c[x]<=i&&d[t=i-c[x]]?d[t]*10+x:p}.compact;q.any?&&d[i]=q.max}
p d[N]