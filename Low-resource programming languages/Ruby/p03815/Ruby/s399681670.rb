N = gets.to_i
ans = N / 11 * 2
ans += (N % 11).tap {|n| break n < 7 ? 1 : 2 if n > 0 }
puts ans
