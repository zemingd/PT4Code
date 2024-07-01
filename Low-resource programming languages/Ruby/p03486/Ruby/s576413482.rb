s = gets.chomp.split.sort.join("")
t = gets.chomp.split.sort.join("").reverse
puts (s < t) ? "Yes" : "No"
