s = gets.strip
t = gets.strip

hit = 0
hit += 1 if s[0] == t[0]
hit += 1 if s[1] == t[1]
hit += 1 if s[2] == t[2]
puts hit