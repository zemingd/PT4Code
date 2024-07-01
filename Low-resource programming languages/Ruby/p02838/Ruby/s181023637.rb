mod=1000000007
gets
a=gets.split.map(&:to_i)
ans = 0
mul = 1
60.times{|i|
  b=a.map{|t|t[i]}
  ans += b.count(0)*b.count(1)*mul%mod
  mul = (mul*2)%mod
}
p ans