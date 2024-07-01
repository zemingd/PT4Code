s = gets.chomp
n = s.length
str1 = s[0..(n-1)/2-1]
str2 = s[(n+3)/2-1..-1]
idx = str1.length / 2 - 1
if str1[0..idx] == str1.reverse[0..idx] && str2[0..idx] == str2.reverse[0..idx]
  puts 'Yes'
else
  puts 'No'
end