n = gets.to_i
a = n.times.map{gets.to_i}
 
p a.inject(:+) - a.max + a.max/2