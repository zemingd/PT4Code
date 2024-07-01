s = gets.chomp
n = s.size
if s==s.reverse && s[0...(n-1)/2]==s[0...(n-1)/2].reverse && s[(n+3)/2...n-1]==s[(n+3)/2...n-1]
  puts "Yes"
else
  puts "No"
end