a = gets.split.map(&:to_i)
if a.uniq.count == 3 || a.uniq.count == 1
  puts "No"
else
  puts "Yes"
end
