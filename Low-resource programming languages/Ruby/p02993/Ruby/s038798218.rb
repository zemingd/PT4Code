s = gets.chomp.split("")
puts s[0] == s[1] || s[1] == s[2] || s[2] == s[3] ? "Bad" : "Good"