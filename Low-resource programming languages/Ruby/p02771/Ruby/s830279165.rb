line=gets.chomp.split().map(&:to_i)
if line.uniq.count == 1 || line.uniq.count == 3
  puts "No"
else 
  puts "Yes"
end  