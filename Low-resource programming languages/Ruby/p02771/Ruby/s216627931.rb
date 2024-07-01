data = gets.chomp.split(" ").map(&:to_i)
puts data.uniq.count == 2 ? "Yes" : "No"