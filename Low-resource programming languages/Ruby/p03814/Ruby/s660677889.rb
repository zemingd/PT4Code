s = gets.chomp

first_index = s.index('A')
last_index = s.rindex('Z')

puts s[first_index..last_index].size