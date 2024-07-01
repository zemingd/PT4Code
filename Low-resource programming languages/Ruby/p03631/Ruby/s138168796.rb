n = gets.chomp.split("").map(&:to_i)
puts n[0] == n[2] ? "Yes":"No"