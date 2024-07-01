s = gets.chomp.split("")

if s.uniq.count == 2
  puts "Yes"
else
  puts "No"
end