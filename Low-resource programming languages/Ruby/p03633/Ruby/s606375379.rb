n = gets.to_i

ans = 1

n.times do
  m = gets.to_i
  ans = m.lcm(ans)
end

puts ans
