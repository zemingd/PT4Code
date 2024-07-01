s = gets.chomp.split('').map(&:to_i)

puts s[0] != s[1] && s[1] != s[2] && s[2] != s[3] ? "Good" : "Bad"
