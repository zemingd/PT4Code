n = gets.chomp
nn = n.to_i
x = n.split("").map(&:to_i).inject(:+)
puts nn % x == 0 ? "Yes" : "No"