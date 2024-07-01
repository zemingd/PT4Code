n = gets.to_i
res = 1
n.times do |_|
  res = res.lcm(gets.to_i)
end
puts res