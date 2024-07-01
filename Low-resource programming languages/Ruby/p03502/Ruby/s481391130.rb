n = gets.chomp
x = n.split("").map(&:to_i).inject(:+)
n = n.to_i
puts n % x == 0 ? "Yes" : "No"