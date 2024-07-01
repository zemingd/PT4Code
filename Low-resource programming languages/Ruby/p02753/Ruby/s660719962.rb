s = gets.chomp.split('').uniq
if s.size == 1
  puts "No"
else
  puts "Yes"
end