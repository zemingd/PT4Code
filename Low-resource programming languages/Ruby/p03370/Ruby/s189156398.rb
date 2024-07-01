n,x=gets.split.map(&:to_i)
m=[*1..n].map{gets.to_i}
p (x-m.inject(:+))/m.min+3