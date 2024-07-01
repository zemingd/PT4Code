S = gets.chomp
a_index = S.index("A")
z_index = S.rindex("Z")

ans = (z_index + 1) - (a_index + 1) + 1
puts ans
