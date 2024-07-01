
s = gets.chomp

if s.chars.sort.join == "abc"
  puts "Yes"
else
  puts "No"
end