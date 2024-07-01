n = gets.to_i
a = n.to_s.split("").map(&:to_i).inject(:+)
puts n % a == 0 ? "Yes": "No"