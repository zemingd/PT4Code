n = gets.to_i
t = n.times.map{gets.to_i}
puts t.inject(1,&:lcm)