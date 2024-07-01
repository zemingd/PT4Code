s1 = gets.chomp
s2 = gets.chomp
result = s2[0..-2] == s1 ? "Yes" : "No"
puts(result)