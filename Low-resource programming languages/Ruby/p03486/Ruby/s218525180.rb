s = gets.chomp
t = gets.chomp

s = s.chars.sort!.join
t = t.chars.sort!.reverse!.join

print (s < t) ? "Yes" : "No"
