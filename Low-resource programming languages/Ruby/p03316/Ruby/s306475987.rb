n = gets.chomp
x = n.split("").map(&:to_i).inject(:+)
puts (n.to_i % x == 0) ? "Yes" : "No"