N = gets.to_i
lcm = 1
N.times do |i|
  data = gets.to_i
  if !T.include?(data)
    lcm = lcm.lcm(data)
  end
end
p lcm