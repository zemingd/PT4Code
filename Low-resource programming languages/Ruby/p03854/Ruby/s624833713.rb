s = gets.chomp
s.gsub("eraser", "x").gsub("erase", "x").gsub("dreamer", "x").gsub("dream", "x").delete("x")
puts s.size > 0 ? "YES" : "No"