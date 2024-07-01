n = gets.to_i
ans = 1

n.times do
  t = gets.to_i
  ans = ans.lcm(t)
end

puts ans
