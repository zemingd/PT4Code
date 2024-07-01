n,x = gets.split.map(&:to_i)
m = n.times.map{gets.to_i}

p m.size + (x-m.inject(:+))/m.min
