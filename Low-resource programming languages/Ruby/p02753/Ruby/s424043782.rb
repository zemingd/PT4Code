s = STDIN.gets.to_s
puts s.chomp.split("").compact.size == 1 ? "Yes" : "No"