s = gets.to_s
a_index = s.index("A")
z_index = s.reverse.index("Z")

ans = s[a_index..-z_index - 1]

puts ans.size