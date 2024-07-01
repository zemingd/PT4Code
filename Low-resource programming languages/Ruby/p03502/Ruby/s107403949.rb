n = gets.chomp
tmp = n.to_i
fx = n.split("").map(&:to_i).inject(:+)
puts tmp % fx == 0 ? "Yes" : "No"
