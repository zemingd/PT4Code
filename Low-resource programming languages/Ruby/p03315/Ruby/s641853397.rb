s = gets.strip.split("").map(&:to_s)
as = s.count("+")
m = s.size
puts 2*as-m