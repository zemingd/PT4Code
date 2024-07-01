N = gets.to_i
lcm = 1
N.times do
  lcm = lcm.lcm(gets.to_i)
end
p lcm
