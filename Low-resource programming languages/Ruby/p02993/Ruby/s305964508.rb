s = gets.chomp

if s[0] == s[1] || s[1] == s[2] || s[2] == s[3]
  puts 'Bad'
else
  puts 'Good'
end