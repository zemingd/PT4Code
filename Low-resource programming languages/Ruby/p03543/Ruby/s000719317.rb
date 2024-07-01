s = gets.chomp
if s[1] == s[2] and ( s[0] == s[1] or s[2] == s[3] )
  puts 'Yes'
else
  puts 'No'
end