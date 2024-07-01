s = gets.chop
n = s.length
if s == s.reverse && s[0..n/2-1] == s[0..n/2-1].reverse && s[(n+3)/2-1..n-1] == s[(n+3)/2-1..n-1].reverse
  puts 'Yes'
else
  puts 'No'
end