S = gets.chomp

A_index = S.index("A")
Z_index = S.index("Z")

ans = (Z_index + 1) - (A_index + 1) + 1

puts ans