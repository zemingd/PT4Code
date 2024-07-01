s = gets.chomp
t = gets.chomp

s.chars.sort!.join
t2 = t.chars.sort!.reverse!.join.slice!(0..s.size)

print (s <=> t2) == -1 ? "Yes" : "No"
