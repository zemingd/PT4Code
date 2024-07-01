s1 = gets.chomp
s2 = gets.chomp

puts (s1[0] == s2[2] && s1[1] == s2[1] && s1[2] == s2[0]) ? "YES" : "NO"