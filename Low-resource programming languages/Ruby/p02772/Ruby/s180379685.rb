_ = gets
a = gets.chomp.split.map(&:to_i)
puts (a.any? {|i| i % 2 == 0 && i % 3 != 0 && i % 5 != 0 })? "DENIED" : "APPROVED"
