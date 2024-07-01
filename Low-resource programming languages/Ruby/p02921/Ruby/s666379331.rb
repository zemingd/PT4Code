s = gets.chomp
t = gets.chomp
count = 1 if s[0] == t[0]
count += 1 if s[1] == t[1]
count += 1 if s[2] == t[2]
puts count
