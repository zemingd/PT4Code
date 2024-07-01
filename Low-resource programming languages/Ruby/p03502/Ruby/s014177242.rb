n  = gets.to_i
puts n % n.to_s.split("").map(&:to_i).inject(:+) ? "Yes" : "No"
