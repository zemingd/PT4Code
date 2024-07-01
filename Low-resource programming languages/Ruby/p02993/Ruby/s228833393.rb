s = gets.chomp
if s.chars.uniq.size < s.size
  puts "Bad"
else
  puts "Good"
end