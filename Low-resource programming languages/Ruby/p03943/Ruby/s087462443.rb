n = gets.chomp.split(" ").map(&:to_i).sort{ |a, b| b <=> a }
puts n[0] == n[1] + n[2] ? "Yes" : "No"