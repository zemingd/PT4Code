ans = 1
n = gets.to_i
n.times do
  tmp = gets.to_i
  ans = ans.lcm(tmp)
end
puts ans