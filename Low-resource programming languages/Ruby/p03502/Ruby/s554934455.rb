x = gets.chomp
puts x.to_i % x.split("").map(&:to_i).inject(:+) == 0 ? "Yes" : "No"