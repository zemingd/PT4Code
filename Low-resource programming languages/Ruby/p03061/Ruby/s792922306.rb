n=gets.to_i
a=gets.split.map &:to_i
d=0
s=a.map{|x|d=d.gcd(x)}
d=0
t=a.reverse.map{|x|d=d.gcd(x)}.reverse
p n.times.map{|i|(i>0?s[i-1]:0).gcd(i<n-1?t[i+1]:0)}.max