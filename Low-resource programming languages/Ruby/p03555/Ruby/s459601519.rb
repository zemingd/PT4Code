str1 = $stdin.gets.chomp.split("")
str2 = $stdin.gets.chomp.split("")

if
  str1[1] != str2[1] or str1[0] != str2[2] or str1[2] != str2[0]
  puts "NO"
else
  puts "YES"
end