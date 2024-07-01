n = gets.chomp
if n.to_i == n.reverse.to_i
  puts "Yes"
else
  puts "No"
end