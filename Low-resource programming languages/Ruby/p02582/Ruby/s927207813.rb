str = gets.chomp
if str == "RSR"
  puts 1
else
  puts str.chars.count("R")
end