s = gets.chomp.chars.sort.join
t = gets.chomp.chars.sort.reverse.join
if s < t
  puts "Yes"
else
  puts "No"
end