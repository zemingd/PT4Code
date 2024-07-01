n = gets.chomp

ans = 0
if n[0] == 'S' && n[1] == "S" && n[2] == "S"
  ans = 3
elsif n[0] == 'R' && n[1] == "R" && n[2] == "R"
  ans = 0
elsif (n[0] == 'S' && n[1] == "S") || (n[1] == "S" && n[2] == "S")
  ans = 2
else
  ans = 1
end
p ans