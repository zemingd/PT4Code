s = gets.chomp
n = s.length
if (s == s.reverse && s[0...((n-1)/2)] == s[0...((n-1)/2)].reverse && s[(((n+3)/2)-1)...n] == s[(((n+3)/2)-1)...n].reverse)
  puts 'Yes'
else
  puts 'No'
end