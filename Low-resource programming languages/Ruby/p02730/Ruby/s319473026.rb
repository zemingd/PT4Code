s = gets.chomp
n = s.size

to = (n-1)/2
from = (n+3)/2

if s == s.reverse && s[0..to-1] == s[0..to-1].reverse && s[(from-1)..n-1] == s[(from-1)..n-1].reverse
  puts 'Yes'
else
  puts 'No'
end
