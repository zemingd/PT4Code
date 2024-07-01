s = gets.chomp
if s == s.reverse && s[0..((s.length - 1) / 2 - 1)] == s[0..((s.length - 1) / 2 - 1)].reverse && s[((s.length + 3) / 2 - 1)..s.length] == s[((s.length + 3) / 2 - 1)..s.length].reverse
  puts 'Yes'
else
  puts 'No'
end