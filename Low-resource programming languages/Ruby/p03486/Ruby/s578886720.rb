a=gets.strip
a.sort!
b=gets.strip
b.sort!
b.reverse!
if a<b
  puts "Yes"
else
  puts "No"
end