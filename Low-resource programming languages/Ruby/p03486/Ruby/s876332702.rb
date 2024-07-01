s = gets.chomp
t = gets.chomp

s.chars.sort!.join
t2 = t.chars.sort!.reverse!.join

print (s < t2) ? "Yes" : "No"
