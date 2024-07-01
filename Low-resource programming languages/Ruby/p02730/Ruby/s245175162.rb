s = gets.chomp.split("")
n = s.length
a = s[0..((n-1)/2)-1]
b = s[(n+1)/2..n-1]
if s == s.reverse && a == a.reverse && b = b.reverse 
  puts 'Yes'
else
  puts 'No'
end