A, B, C = gets.chomp.split(" ").map(&:to_i)

ans = C - (A - B)
ans = 0 if ans < 0

puts ans
