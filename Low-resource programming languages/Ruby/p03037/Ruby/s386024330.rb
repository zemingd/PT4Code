n,m = gets.split.map(&:to_i)

l,r = m.times.map{gets.split.map(&:to_i)}.transpose
puts r.min - l.max+1
