cf = gets.chomp.split(//)
cs = gets.chomp.split(//)

if cf == cs.reverse
  puts "Yes"
else
  puts "No"
end