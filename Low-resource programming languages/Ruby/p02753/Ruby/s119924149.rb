s = gets.chomp.split('')
s.uniq!
if s.size == 1
  puts "No"
else
  puts "Yes"
end