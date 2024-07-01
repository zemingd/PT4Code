n=gets.chomp.split("").map(&:to_i)
puts n.include?(9) ? "Yes" : "No"