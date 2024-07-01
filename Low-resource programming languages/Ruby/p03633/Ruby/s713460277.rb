n = gets.to_i
ts = n.times.map{gets.to_i}
ans = 1
ts.each do |t|
  ans = ans.lcm(t)
end
puts ans