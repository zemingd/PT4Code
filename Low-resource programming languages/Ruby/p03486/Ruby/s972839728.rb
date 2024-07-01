s = gets.chomp
t = gets.chomp

s.chars.sort!.join
t.chars.sort!.reverse!.join

print (s <=> t) == 1 ? "Yes" : "No"