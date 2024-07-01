line = readlines.map(&:chomp)
str1 = line[0]
str2 = line[1]

if str1 == str2.slice(0, str2.length - 1)
  puts "Yes"
else
  puts "No"
end