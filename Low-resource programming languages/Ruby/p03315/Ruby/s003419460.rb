str = readline.split("").map(&:chomp)
puts str.count("+") - str.count("-")