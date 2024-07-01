n = gets.split.map(&:to_i)

if n.uniq.size == 2
  puts "Yes"
else
  puts "No"
end
