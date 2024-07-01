s = gets.to_s
a_index = s.index("a")
z_index = s.reverse.index("z")

ans = s[a_index..-z_index - 1]

puts ans