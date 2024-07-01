n = gets.chomp.to_i
fx = n.to_s.split("").map { |m| m.to_i }.inject(:+)

puts n % fx == 0 ? "Yes" : "No"
