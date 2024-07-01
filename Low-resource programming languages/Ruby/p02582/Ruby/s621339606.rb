array = gets.chomp.chars
if array.count("R") == 3
  puts 3
elsif array.count("R") == 0
  puts 0
elsif array.count("R") == 1
  puts 1
elsif array[1] == "S"
  puts 1
else
  puts 2
end