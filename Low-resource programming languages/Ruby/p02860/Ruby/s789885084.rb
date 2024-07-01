n = gets.to_i
s = gets.chomp

str1 = s[0..n/2]
str2 = s[(n/2 + 1)..n-1]

if str1 == str2
  puts 'Yes'
else
  puts 'No'
end