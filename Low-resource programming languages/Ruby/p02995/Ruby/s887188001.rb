A, B, C, D = gets.chomp.split(" ").map(&:to_i)
E = C.lcm(D)
ans = B - A + 1

ans -= (B - A + 1) / C
ans -= (B - A + 1) / D
ans += (B - A + 1) / E

puts ans
