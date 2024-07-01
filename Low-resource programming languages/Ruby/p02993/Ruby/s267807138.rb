s = gets.chomp
f = false
f = f || s[0]==s[1]
f = f || s[1]==s[2]
f = f || s[2]==s[3]
puts "Bad" if f
puts "Good" if !f