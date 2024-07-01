n,k=gets.split.map(&:to_i)
a=[]
min=10**9+1
n.times{a.push(gets.to_i)}
a.sort!
0.upto(n-k) {|i| min=a[i+k-1]-a[i] if min>a[i+k-1]-a[i]}
p min
