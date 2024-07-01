s = gets.chomp
t = gets.chomp

puts (t.length == s.length + 1) && s == t[0, s.length] ? 'Yes' : 'No'
