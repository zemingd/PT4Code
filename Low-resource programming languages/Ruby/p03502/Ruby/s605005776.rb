x = gets.chomp
a, b  = x.split("").map(&:to_i)
puts x.to_i %  (a+b) == 0 ? "Yes" : "No";