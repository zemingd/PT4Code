K = gets.chomp.to_i

P1 = K/2

if (K % 2 == 0)
  P2 = P1
else
  P2 = P1 + 1
end

puts P1 * P2
