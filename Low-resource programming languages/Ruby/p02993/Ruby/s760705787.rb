s = gets.split("").map(&:to_i)

if ((s[0]==s[1]) or (s[1]==s[2]) or (s[2]==s[3]))
  puts 'Bad'
else
  puts 'Good'
end

