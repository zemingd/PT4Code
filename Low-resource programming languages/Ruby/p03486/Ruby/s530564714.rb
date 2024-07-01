s = gets.chomp.split("").sort.join
t = gets.chomp.split("").sort.join.reverse!
puts t > s ? "Yes" : "No"
