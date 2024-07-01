ns = gets.chomp.split.map(&:to_i).uniq
if ns.size == 2
  puts "Yes"
else
  puts "No"
end