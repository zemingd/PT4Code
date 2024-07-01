s = gets.chomp

puts s.count('a') == 1 && s.count('b') == 1 && s.count('c') == 1 ? "Yes" : "No"