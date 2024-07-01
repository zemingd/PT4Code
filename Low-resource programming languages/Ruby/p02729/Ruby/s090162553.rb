a,b = gets.split.map &:to_i
ans = 0
ans += a * (a - 1) / 2 if a > 0
ans += b * (b - 1) / 2 if b > 0
puts ans