N = gets.to_i
A = gets.split.map(&:to_i)
puts A.select(&:even?).all?{|v| v % 5 == 0 || v % 3 == 0 } ? "APPROVED" : "DENIED"
