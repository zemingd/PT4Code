n = gets.to_i
ts = []
n.times do
  ts << gets.to_i
end

lcm = ts[0]
ts[1..-1].each do |t|
  lcm = lcm.lcm(t)
end

puts lcm