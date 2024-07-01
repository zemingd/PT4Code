x = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("-").map(&:size)
puts x == s ? "Yes" : "No"