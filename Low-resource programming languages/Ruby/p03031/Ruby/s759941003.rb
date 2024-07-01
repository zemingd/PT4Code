n,m = gets.split.map(&:to_i)
t = m.times.map{gets.split.map(&:to_i)}
m.times{|i|t[i].shift}
q = gets.split.map(&:to_i)

ans = 0
(2**n).times.map{|i|
  s = (2**n+i).to_s(2)[1..-1].split('').map(&:to_i)
  on = 0
  t.map.with_index{|x,i|
    cnt = x.map{|j| s[j-1]==1}.count(true)
    on+=1 if cnt%2==q[i]
  }
  ans+=1 if on==m
}
p ans
