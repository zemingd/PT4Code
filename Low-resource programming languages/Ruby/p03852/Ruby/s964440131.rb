s = gets.chomp
s = s.gsub("dream", "1")
     .gsub("dreamer", "1")
     .gsub("erase", "1")
     .gsub("eraser", "1")
     .delete("1")
puts s.empty? ? "YES" : "NO"