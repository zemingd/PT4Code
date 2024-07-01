as = gets.split.map(&:to_i)
total = as.reduce(:+)
f = false
if as.any?{ |a| a == total - a }
  puts "Yes"
else
  puts "No"
end
