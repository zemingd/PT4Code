s = gets.chomp
if s[0] == "R" && s[1] == "R" && s[2] == "R"
  puts 3
elsif (s[0] == "S" && s[1] == "R" && s[2] == "R") || (s[0] == "R" && s[1] == "R" && s[2] == "S")
  puts 2
elsif (s[0] == "S" && s[1] == "S" && s[2] == "R") || (s[0] == "S" && s[1] == "R" && s[2] == "S") || (s[0] == "R" && s[1] == "S" && s[2] == "S") ||  (s[0] == "R" && s[1] == "S" && s[2] == "R")
  puts 1
else
  puts 0
end
