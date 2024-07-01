n = gets.to_i
s = "a" + gets.chomp + "a"

puts s.gsub("ABC", "   ").split.size - 1