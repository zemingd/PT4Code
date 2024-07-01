n,m=gets.split.map(&:to_i)
b=[]
m.times{b<<gets.split.map(&:to_i)}
b=b.flatten
n.times{|x| puts b.count(x+1)}