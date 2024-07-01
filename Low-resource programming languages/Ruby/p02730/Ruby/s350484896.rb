s = gets.chomp.split("")
n = s.size
a = s[0..((n-1)/2-1)]
b = s[((n+3)/2-1)..(n-1)]
puts a.join("") == a.reverse.join("") && b.join("") == b.reverse.join("") && s.join("") == s.reverse.join("") ? "Yes" : "No"