s = gets.chomp
l = s.size - 1
hl = (l - 2) / 2
tl = (l + 2) / 2
if s[0..hl] == s[0..hl].reverse && s == s.reverse && s[tl..l] == s[tl..l].reverse
  puts 'Yes'
else
  puts 'No'
end