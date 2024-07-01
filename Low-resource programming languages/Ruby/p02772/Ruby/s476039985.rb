n = gets.to_i
a = gets.split(" ").map(&:to_i)
puts a.all?{|x| x.odd? || x % 6 == 0 || x % 10 == 0} ? "APPROVED" : "DENIED"