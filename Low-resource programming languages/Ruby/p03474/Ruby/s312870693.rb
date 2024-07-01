a, b = gets.split.map(&:to_i)
s = gets.chomp

puts s.count('-') == 1 && s[a] == '-' ? 'Yes' : 'No'