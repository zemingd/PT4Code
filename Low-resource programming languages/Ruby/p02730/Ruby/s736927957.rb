s = gets.chomp
n = s.size

if s[0..((n-1)/2)-1] == s[0..((n-1)/2)-1].reverse && s[((n+3)/2-1)..n-1] == s[((n+3)/2-1)..n-1].reverse
  puts 'Yes'
else
  puts 'No'
end
