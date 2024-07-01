s = gets.chomp
n = s.size
s1 = s[0, n / 2]
s2 = s[n / 2 + 1, n / 2]
 
if s1 == s1.reverse && s2 == s2.reverse
  puts 'Yes'
else
  puts 'No'
end