mod=1000000007
gets
a=gets.split.map(&:to_i)
ans = 0
mul = 1
61.times{|i|
  cnt = [0,0]
  a.each{|t|cnt[t[i]]+=1}
  ans += cnt[0]*cnt[1]*mul%mod
  mul = (mul*2)%mod
}
p ans%mod