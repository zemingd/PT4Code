n = gets.to_i
t = n.times.map{gets.to_i}
lcm = 1
t.each do |x|
  lcm = lcm.lcm(x)
end
puts lcm