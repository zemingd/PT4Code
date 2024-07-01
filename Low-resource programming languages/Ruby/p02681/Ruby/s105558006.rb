s = gets.chomp
t = gets.chomp

puts s == t[0, t.size - 1] ? "Yes" : "No"