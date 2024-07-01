s = gets.to_s
a = s.index("A")
b = s.rindex("Z")
puts s[a..b].length