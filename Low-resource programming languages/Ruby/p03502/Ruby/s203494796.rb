n = gets.chomp.to_i
f = n.to_s.split("").map(&:to_i).inject(:+)

puts n % f == 0 ? "Yes" : "No"