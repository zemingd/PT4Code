n,x=gets.split.map(&:to_i)
m=[*1..n].map{gets.to_i}
p m
p m.inject(:+)
p (x-m.inject(:+))/m.min+n