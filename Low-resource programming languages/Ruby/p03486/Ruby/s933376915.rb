s = gets.chomp.split("").sort.join
t = gets.chomp.split("").sort.reverse.join

if s < t then
  puts "Yes"
else
  puts "No"
end
