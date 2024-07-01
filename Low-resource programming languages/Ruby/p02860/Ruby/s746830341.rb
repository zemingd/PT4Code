n = (gets.to_i / 2)
s = gets.chomp
(s[0...n] + s[0...n]) == s ? puts("Yes") : puts("No")