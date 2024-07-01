s = gets.chomp.chars
a = s.find_index("A")
z = s.rindex("Z")
puts s[a..z].count