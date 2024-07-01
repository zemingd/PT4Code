cost = 700
gets.chomp.split("").map {|x| cost += 100 if x == "o"}
print cost