h = gets.to_i

x = h.to_s(2).to_s.length
ans = 0
bit = 1
for i in 1..x
  ans += bit
  bit = bit * 2
end

puts ans