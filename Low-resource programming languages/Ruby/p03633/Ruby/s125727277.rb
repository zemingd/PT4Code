n = gets.to_i
lcm = gets.to_i
(n-1).times do
  lcm = lcm.lcm(gets.to_i)
end
puts lcm