s = gets.chomp
puts s[0] == s[1] && s[1] == s[2] || s[1] == s[2] && s[2] == s[3] ? "Yes" : "No"
