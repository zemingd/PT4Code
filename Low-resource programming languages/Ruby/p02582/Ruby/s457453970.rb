s = gets.chomp
x = s.count("R")
if x != 2
  puts x
elsif s[1] == "S"
  puts 1
else
  puts 2
end