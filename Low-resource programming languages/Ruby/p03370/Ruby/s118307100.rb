n,x=gets.split.map(&:to_i)
a=n.times.map{gets.to_i}
puts a.size+(x-a.inject(&:+))/a.min