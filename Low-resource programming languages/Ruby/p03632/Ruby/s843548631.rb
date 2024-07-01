a, b, c, d = gets.split.map(&:to_i)
ans = 0

ans = 0 if b < c
ans = b-c if b > c && b < d
ans = d-c if b > c && b > d

puts ans
