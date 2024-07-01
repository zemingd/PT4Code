s = gets.chomp
s = s.gsub("eraser", "1")
s = s.gsub("erase", "1")
s = s.gsub("dreamer", "1")
s = s.gsub("dream", "1")
s = s.delete("1")
puts s.empty? ? "YES" : "No"