s = gets.chomp
t = gets.chomp

s.chars.sort!.join
t = t.chars.sort!.reverse!.join.slice(0..s.size)

print (s <=> t) == -1 ? "Yes" : "No"
