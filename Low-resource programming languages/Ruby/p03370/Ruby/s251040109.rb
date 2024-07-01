n,x = gets.split(" ").map(&:to_i)
m = n.times.map{gets.to_i}
ans = 0
puts m.length + (x-m.sum)/m.min