A, B = gets.chomp.split(" ").map(&:to_i)

ans = A
ans -= 1 if A > B

puts ans
