a = gets.split.map(&:to_i).uniq.length
if a == 2
  puts "Yes"
else
  puts "No"
end