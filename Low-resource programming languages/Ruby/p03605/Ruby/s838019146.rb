a, b = readline.chomp.split("").map(&:to_i)
puts [a, b].include?(9) ? "Yes" : "No"