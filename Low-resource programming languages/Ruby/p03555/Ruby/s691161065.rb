s1 = gets.chomp
s2 = gets.chomp

if s1 == s2.reverse && s2 == s1.reverse
  puts "YES"
else
  puts "NO"
end