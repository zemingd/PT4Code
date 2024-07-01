s = gets.chomp
s = s.gsub("hi", "")
puts s.empty? ? "Yes" : "No"