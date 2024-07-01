N,X=gets.split.map &:to_i
x=[X]+gets.split.map(&:to_i)
d=x.sort.each_cons(2).map{|l,r|r-l}
p d.inject(d[0]){|memo,i|memo.gcd(i)}