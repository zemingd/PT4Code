s = gets.chomp
if s.uniq.size < s.size
  puts "Bad"
else
  puts "Good"
end