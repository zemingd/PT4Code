n = readline.split("").map(&:to_i)
puts (n[0] == n[1] && n[1] == n[2]) || (n[1] == n[2] && n[2] == n[3]) ? "Yes" : "No"