s = gets.chomp.split("")
unless s.uniq.size == 1
  puts "Yes"
else
  puts "No"
end
