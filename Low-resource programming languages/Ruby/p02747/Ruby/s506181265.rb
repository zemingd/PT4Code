s = gets.chomp.gsub("hi", "")
puts s.size == 0 ? "Yes" : "No"