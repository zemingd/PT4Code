n = gets.to_i
s = gets.chomp.split.uniq
puts s.size == 3 ? "Three" : "Four"