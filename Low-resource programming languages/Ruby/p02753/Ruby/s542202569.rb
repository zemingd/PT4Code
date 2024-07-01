s = gets.chomp.split ''
a = 'Yes'
a = 'No' if s [0] == s[1] && s[0] == s[2] && s[1] == s[2]
puts a