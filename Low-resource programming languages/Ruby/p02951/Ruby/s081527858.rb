A, B, C = gets.split.map(&:to_i)

ans = C - (A - B)
puts (ans >= 0) ? ans : 0