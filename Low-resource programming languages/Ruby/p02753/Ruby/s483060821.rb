s = gets.chomp.split("")
puts s.uniq.size == 2 ? "Yes" : "No"