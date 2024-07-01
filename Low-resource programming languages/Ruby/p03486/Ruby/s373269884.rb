s = gets.chomp.split("").sort.join
t = gets.chomp.split("").sort.reverse.join
puts (s < t) ? "Yes" : "No"