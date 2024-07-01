n = gets.chomp.to_i
t = []
n.times do
  t.push gets.chomp.to_i
end
lcm = 1
t.each do |x|
  lcm = lcm.lcm(x)
end
puts lcm
