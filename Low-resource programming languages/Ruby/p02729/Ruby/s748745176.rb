n,m=gets.split.map(&:to_i)
a=[]
n.times{|i|a<<2*i}
m.times{|i|a<<2*i-1}
p a.combination(2).to_a.select{|b|b.inject(:+)%2==0}.size