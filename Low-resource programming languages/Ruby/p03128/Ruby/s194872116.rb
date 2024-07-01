c=[0,2,5,5,4,5,6,3,7,6]
N,M=gets.split.map &:to_i
a=gets.split.map &:to_i
d=Array.new(N+1,p)
d[0]=0
0.upto(N){|i|
    q=[]
    M.times{|m|c[a[m]]<=i&&d[i-c[a[m]]]&&q<< d[i-c[a[m]]]*10+a[m]}
    q.size>0&&d[i]=q.max
}
p d[N]