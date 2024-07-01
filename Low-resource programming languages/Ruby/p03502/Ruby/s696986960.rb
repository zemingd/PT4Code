X = gets.chomp

fx = X.split("").map(&:to_i).sum

puts X.to_i % fx == 0 ? "Yes" : "No"
