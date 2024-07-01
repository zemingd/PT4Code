s = gets.chomp.split("")
if s.uniq.size!=1
  puts "Yes"
else
  puts "No"
end