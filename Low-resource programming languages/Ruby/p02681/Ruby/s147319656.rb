io = STDIN
str1=io.gets.chomp
str2=io.gets.chomp
if str1==str2[0..-2]
  puts 'Yes'
else
  puts 'No'
end
