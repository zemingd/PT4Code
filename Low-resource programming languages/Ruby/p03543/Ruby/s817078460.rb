s = gets.chomp

puts s.squeeze(s[0]).size < 3 || s.squeeze(s[-1]).size < 3 ? 'Yes' : 'No'
