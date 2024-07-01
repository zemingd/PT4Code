s = gets.split("")

f = s[0] == s[1] || s[1] == s[2] || s[2] == s[3]
puts f ? "Bad" : "Good"