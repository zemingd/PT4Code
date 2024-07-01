x = gets.chomp
a = x.split("").map(&:to_i)
puts x.to_i % a.inject(&:+) == 0 ? "Yes" : "No";