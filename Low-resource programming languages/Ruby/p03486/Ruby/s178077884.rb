n = gets.chomp.split("").sort!.join("")
y = gets.chomp.split("").sort!.reverse!.join("")
puts n < y ? "Yes" : "No"