n=gets.chomp
r = n.count("R")
if r == 2
  puts n[1] == "R" ? 2 : 1
else
  puts r
end