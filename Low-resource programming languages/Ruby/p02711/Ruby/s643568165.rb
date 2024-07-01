n = gets.strip

puts n.split("").map(&:to_i).include?(7) ? "Yes" : "No"
